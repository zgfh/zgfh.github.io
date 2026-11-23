#!/usr/bin/env bash
set -euo pipefail

COMMIT_SHA=${1:-$(git rev-parse HEAD)}
ONLINE_URL=${2:-}
WORKFLOW_FILE=${WORKFLOW_FILE:-pages.yaml}
POLL_SECONDS=${POLL_SECONDS:-15}
TIMEOUT_SECONDS=${TIMEOUT_SECONDS:-1200}

command -v gh >/dev/null || {
  echo "error: gh is required" >&2
  exit 1
}
command -v jq >/dev/null || {
  echo "error: jq is required" >&2
  exit 1
}

deadline=$((SECONDS + TIMEOUT_SECONDS))
run_id=""
last_state=""
status=""
conclusion=""
run_url=""

while (( SECONDS < deadline )); do
  run_json=$(gh run list \
    --workflow "$WORKFLOW_FILE" \
    --commit "$COMMIT_SHA" \
    --limit 1 \
    --json databaseId,status,conclusion,url,headSha)

  run_id=$(jq -r '.[0].databaseId // empty' <<<"$run_json")
  if [[ -n "$run_id" ]]; then
    break
  fi

  if [[ "$last_state" != "waiting-for-run" ]]; then
    echo "pages_status=waiting-for-run commit=$COMMIT_SHA"
    last_state="waiting-for-run"
  fi
  sleep "$POLL_SECONDS"
done

if [[ -z "$run_id" ]]; then
  echo "error: no Pages workflow run found before timeout" >&2
  exit 1
fi

while (( SECONDS < deadline )); do
  run_json=$(gh run view "$run_id" --json status,conclusion,url,headSha)
  status=$(jq -r '.status' <<<"$run_json")
  conclusion=$(jq -r '.conclusion // ""' <<<"$run_json")
  run_url=$(jq -r '.url' <<<"$run_json")
  state="$status${conclusion:+/$conclusion}"

  if [[ "$state" != "$last_state" ]]; then
    echo "pages_status=$state run=$run_url"
    last_state="$state"
  fi

  if [[ "$status" == "completed" ]]; then
    if [[ "$conclusion" != "success" ]]; then
      echo "error: Pages workflow failed: $run_url" >&2
      exit 1
    fi
    break
  fi
  sleep "$POLL_SECONDS"
done

if [[ "$status" != "completed" ]]; then
  echo "error: Pages workflow did not complete before timeout: $run_url" >&2
  exit 1
fi

if [[ -n "$ONLINE_URL" ]]; then
  while (( SECONDS < deadline )); do
    http_code=$(curl -L -sS -o /dev/null -w '%{http_code}' \
      --connect-timeout 10 --max-time 30 "$ONLINE_URL" || true)
    if [[ "$http_code" == "200" ]]; then
      echo "published_url=$ONLINE_URL http=200"
      exit 0
    fi
    sleep "$POLL_SECONDS"
  done
  echo "error: published page did not return HTTP 200: $ONLINE_URL" >&2
  exit 1
fi

echo "pages_status=success run=$run_url"
