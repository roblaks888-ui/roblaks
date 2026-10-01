#!/usr/bin/env bash
set -euo pipefail

URL="${1:-http://localhost:8080/health}"

if curl --fail -- silent --swow-error "$URL" | grep -q "OK"; then
  echo "OK: сервис доступен: $URL"
else 
  echo "ERROR: сервис недоступен: $URL" >&2
  exit 1
fi
