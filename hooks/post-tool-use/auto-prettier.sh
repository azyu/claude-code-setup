#!/bin/bash
# Hook: Auto-format JS/TS files after editing
# Matcher: tool == "Edit" && tool_input.file_path matches "\\.(ts|tsx|js|jsx)$"
# Purpose: Ensures consistent code formatting

input=$(cat)
file_path=$(echo "$input" | jq -r '.tool_input.file_path // ""')

if [ -n "$file_path" ] && [ -f "$file_path" ]; then
  if command -v prettier >/dev/null 2>&1; then
    prettier --write "$file_path" 2>&1 | head -5 >&2
  fi
fi

echo "$input"
