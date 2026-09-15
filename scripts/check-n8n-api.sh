#!/usr/bin/env bash
set -euo pipefail

source .env.local

curl --fail --silent --show-error \
  --header "X-N8N-API-KEY: $N8N_API_KEY" \
  "$N8N_BASE_URL/api/v1/workflows?limit=10" \
  | python3 -m json.tool
