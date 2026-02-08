# Claude Code Hooks

Hook scripts for Claude Code automation. Each script runs at specific lifecycle points.

## Directory Structure

```
hooks/
├── pre-tool-use/     # Before tool execution
├── post-tool-use/    # After tool execution
└── stop/             # Session end
```

## PreToolUse Hooks

### dev-server-blocker.sh
| Matcher | `tool == "Bash" && command matches "(npm run dev\|pnpm dev\|yarn dev\|bun run dev)"` |
|---------|--------------------------------------------------------------------------------------|
| Action  | **BLOCKS** dev server commands |
| Reason  | Forces tmux usage for log access and session persistence |

### tmux-reminder.sh
| Matcher | `tool == "Bash" && command matches "(npm install\|pnpm test\|cargo build\|docker\|...)"` |
|---------|------------------------------------------------------------------------------------------|
| Action  | **WARNS** about long-running commands |
| Reason  | Suggests tmux for session persistence (non-blocking) |

### git-push-review.sh
| Matcher | `tool == "Bash" && command matches "git push"` |
|---------|------------------------------------------------|
| Action  | **PROMPTS** before push |
| Reason  | Gives opportunity to review changes |

### doc-file-blocker.sh
| Matcher | `tool == "Write" && file_path matches "\\.(md\|txt)$"` (excludes README, CLAUDE, etc.) |
|---------|----------------------------------------------------------------------------------------|
| Action  | **BLOCKS** unnecessary doc file creation |
| Reason  | Prevents documentation file proliferation |

## PostToolUse Hooks

### pr-creation-logger.sh
| Matcher | `tool == "Bash"` (detects `gh pr create` in output) |
|---------|-----------------------------------------------------|
| Action  | **LOGS** PR URL and review commands |
| Reason  | Quick access to created PR info |

### auto-prettier.sh
| Matcher | `tool == "Edit" && file_path matches "\\.(ts\|tsx\|js\|jsx)$"` |
|---------|----------------------------------------------------------------|
| Action  | **FORMATS** edited file with Prettier |
| Reason  | Maintains consistent code style |

### typescript-check.sh
| Matcher | `tool == "Edit" && file_path matches "\\.(ts\|tsx)$"` |
|---------|-------------------------------------------------------|
| Action  | **CHECKS** types with tsc |
| Reason  | Catches type errors immediately |

### console-log-warning.sh
| Matcher | `tool == "Edit" && file_path matches "\\.(ts\|tsx\|js\|jsx)$"` |
|---------|----------------------------------------------------------------|
| Action  | **WARNS** if console.log found |
| Reason  | Prevents debug statements in commits |

## Stop Hooks

### console-log-audit.sh
| Matcher | `*` (all sessions) |
|---------|---------------------|
| Action  | **AUDITS** all modified files for console.log |
| Reason  | Final check before session ends |

### context-update-reminder.sh
| Matcher | `*` (all sessions) |
|---------|---------------------|
| Action  | **REMINDS** to document changes in .context/ |
| Reason  | Encourages knowledge documentation after code changes |

### qmd-reindex.sh
| Matcher | `*` (all sessions) |
|---------|---------------------|
| Action  | **REINDEXES** qmd if .context/*.md files changed |
| Reason  | Keeps semantic search index up-to-date |

## Script Structure

All hooks follow this pattern:

```bash
#!/bin/bash
# Hook: [Name]
# Matcher: [Condition]
# Purpose: [Description]

input=$(cat)                    # Read JSON from stdin
# ... process ...
echo "$input"                   # Pass through (or exit 1 to block)
```

## Adding New Hooks

1. Create script in appropriate directory
2. Add shebang and metadata comments
3. Make executable: `chmod +x script.sh`
4. Add to `settings.json` with matcher and path
