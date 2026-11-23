#!/usr/bin/env bash
set -euo pipefail

COMMIT_REF=${1:-HEAD}
COMMIT_SHA=$(git rev-parse "$COMMIT_REF")
ONLINE_URL=${2:-}
WORKFLOW_FILE=${WORKFLOW_FILE:-pages.yaml}
POLL_SECONDS=${POLL_SECONDS:-20}
TIMEOUT_SECONDS=${TIMEOUT_SECONDS:-1200}

command -v jq >/dev/null || {
  echo "error: jq is required" >&2
  exit 1
}
command -v curl >/dev/null || {
  echo "error: curl is required" >&2
  exit 1
}

use_gh=false
if command -v gh >/dev/null && gh auth status >/dev/null 2>&1; then
  use_gh=true
fi

remote_url=$(git remote get-url origin)
case "$remote_url" in
  git@github.com:*) github_repo=${remote_url#git@github.com:} ;;
  https://github.com/*) github_repo=${remote_url#https://github.com/} ;;
  *)
    echo "error: cannot derive GitHub repository from origin: $remote_url" >&2
    exit 1
    ;;
esac
github_repo=${github_repo%.git}

api_headers=(-H "Accept: application/vnd.github+json")
if [[ -n "${GITHUB_TOKEN:-}" ]]; then
  api_headers+=(-H "Authorization: Bearer $GITHUB_TOKEN")
fi

list_run() {
  if [[ "$use_gh" == true ]]; then
    gh run list \
      --workflow "$WORKFLOW_FILE" \
      --commit "$COMMIT_SHA" \
      --limit 1 \
      --json databaseId,status,conclusion,url,headSha
  else
    curl -fsS "${api_headers[@]}" \
      "https://api.github.com/repos/$github_repo/actions/workflows/$WORKFLOW_FILE/runs?head_sha=$COMMIT_SHA&per_page=1" \
      | jq '[.workflow_runs[0] | select(.) | {
          databaseId: .id,
          status,
          conclusion,
          url: .html_url,
          headSha: .head_sha
        }]'
  fi
}

view_run() {
  if [[ "$use_gh" == true ]]; then
    gh run view "$run_id" --json status,conclusion,url,headSha
  else
    curl -fsS "${api_headers[@]}" \
      "https://api.github.com/repos/$github_repo/actions/runs/$run_id" \
      | jq '{status, conclusion, url: .html_url, headSha: .head_sha}'
  fi
}

deadline=$((SECONDS + TIMEOUT_SECONDS))
run_id=""
last_state=""
status=""
conclusion=""
run_url=""

while (( SECONDS < deadline )); do
  run_json=$(list_run)

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
  run_json=$(view_run)
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
