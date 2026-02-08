#!/bin/bash
# Hook: Remind to use tmux for long-running commands
# Matcher: tool == "Bash" && tool_input.command matches "(npm (install|test)|pnpm (install|test)|yarn (install|test)|bun (install|test)|cargo build|make|docker|pytest|vitest|playwright)"
#
# Purpose: Suggests using tmux for session persistence with long-running tasks

input=$(cat)

if [ -z "$TMUX" ]; then
  echo '[Hook] Consider running in tmux for session persistence' >&2
  echo '[Hook] tmux new -s dev  |  tmux attach -t dev' >&2
fi

# Pass through - this is just a reminder, not a blocker
echo "$input"
