#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if [[ ! -x .venv/bin/python ]]; then
  python3 -m venv .venv
fi
if [[ ! -f .venv/requirements.installed ]] || ! cmp -s requirements.txt .venv/requirements.installed; then
  .venv/bin/python -m pip install -r requirements.txt
  cp requirements.txt .venv/requirements.installed
fi
exec .venv/bin/python app.py "$@"
