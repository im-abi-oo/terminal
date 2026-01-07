#!/bin/sh
set -e

PORT=${PORT:-7681}
USER=${TTYD_USER:-dev}
PASS=${TTYD_PASS:-dev123}

echo "Starting ttyd on port $PORT"

exec ttyd \
  -p "$PORT" \
  -c "$USER:$PASS" \
  --term xterm-256color \
  bash
