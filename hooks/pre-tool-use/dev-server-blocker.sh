#!/bin/bash
# Hook: Block dev server commands that aren't run in tmux
# Matcher: tool == "Bash" && tool_input.command matches "(npm run dev|pnpm( run)? dev|yarn dev|bun run dev)"
#
# Purpose: Ensures dev servers are run in tmux for log access and session persistence

input=$(cat)
cmd=$(echo "$input" | jq -r '.tool_input.command // ""')

# Block dev servers that aren't run in tmux
echo '[Hook] BLOCKED: Dev server must run in tmux for log access' >&2
echo '[Hook] Use this command instead:' >&2
echo "[Hook] tmux new-session -d -s dev '$cmd'" >&2
echo '[Hook] Then: tmux attach -t dev' >&2
exit 1
