#!/bin/bash
# Hook: Block creation of unnecessary documentation files
# Matcher: tool == "Write" && tool_input.file_path matches "\\.(md|txt)$" && !(tool_input.file_path matches "README\\.md|CLAUDE\\.md|AGENTS\\.md|CONTRIBUTING\\.md")
#
# Purpose: Prevents proliferation of random documentation files

input=$(cat)
file_path=$(echo "$input" | jq -r '.tool_input.file_path // ""')

# Check if it's a doc file that's not in the allowed list
if [[ "$file_path" =~ \.(md|txt)$ ]] && [[ ! "$file_path" =~ (README|CLAUDE|AGENTS|CONTRIBUTING)\.md$ ]]; then
  echo "[Hook] BLOCKED: Unnecessary documentation file creation" >&2
  echo "[Hook] File: $file_path" >&2
  echo "[Hook] Use README.md for documentation instead" >&2
  exit 1
fi

# Pass through if allowed
echo "$input"
