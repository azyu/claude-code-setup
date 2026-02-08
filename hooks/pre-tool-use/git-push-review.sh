#!/bin/bash
# Hook: Review changes before git push
# Matcher: tool == "Bash" && tool_input.command matches "git push"
#
# Purpose: Prompts for review before pushing to remote

input=$(cat)

echo '[Hook] Review changes before push...' >&2

# Uncomment your preferred editor:
# zed . 2>/dev/null
# code . 2>/dev/null
# cursor . 2>/dev/null

echo '[Hook] Press Enter to continue with push or Ctrl+C to abort...' >&2
read -r

# Pass through after confirmation
echo "$input"
