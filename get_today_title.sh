#!/bin/bash

START_DATE="2025-04-22"  # 자동화 시작일
TODAY=$(date +%Y-%m-%d)
DAYS_DIFF=$(( ( $(date -d "$TODAY" +%s) - $(date -d "$START_DATE" +%s) ) / 86400 ))
TITLE=$(sed -n "$((DAYS_DIFF + 1))p" titles.txt)

if [ -z "$TITLE" ]; then
  echo "No more titles left."
  exit 0
fi

echo "$TITLE"
