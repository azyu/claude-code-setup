# Claude Code Setup

Git-synced Claude Code configuration. Keeps `~/.claude/` settings portable across machines.

> For AI agents setting up this configuration, see [INSTALL.md](INSTALL.md).

## Quick Start

Copy the installation prompt from [INSTALL.md](INSTALL.md) and paste it into Claude Code.

## Components

### Rules (`rules/`)

| File | Description |
|------|-------------|
| `agents.md` | Agent orchestration and parallel execution patterns |
| `coding-style.md` | Immutability, file organization, error handling |
| `git-workflow.md` | Commit format, PR workflow, feature implementation |
| `hooks.md` | Hook types, current hooks, auto-accept permissions |
| `patterns.md` | API response, custom hooks, repository patterns |
| `performance.md` | Model selection, context window, ultrathink |
| `security.md` | Security checklist, secret management |
| `testing.md` | TDD workflow, 80% coverage requirement |

### Agents (`agents/`)

| File | Description |
|------|-------------|
| `architect.md` | System design and architectural decisions |
| `build-error-resolver.md` | Build/TypeScript error resolution |
| `code-reviewer.md` | Code quality review |
| `doc-updater.md` | Documentation and codemap updates |
| `e2e-runner.md` | Playwright E2E testing |
| `planner.md` | Implementation planning |
| `refactor-cleaner.md` | Dead code cleanup and consolidation |
| `security-reviewer.md` | Security vulnerability detection |
| `tdd-guide.md` | Test-driven development enforcement |

### Commands (`commands/`)

| File | Description |
|------|-------------|
| `act.md` | RED-GREEN-REFACTOR cycle |
| `build-fix.md` | Build and fix errors |
| `code-review.md` | Code review workflow |
| `e2e.md` | E2E test generation and execution |
| `log.md` | Activity logging |
| `plan.md` | Implementation planning |
| `plannotator-review.md` | Interactive code review |
| `refactor-clean.md` | Refactoring workflow |
| `tdd.md` | TDD scaffold and workflow |
| `test-coverage.md` | Test coverage analysis |
| `update-codemaps.md` | Codemap generation |
| `update-docs.md` | Documentation updates |

### Hooks (`hooks/`)

| Hook | Type | Action |
|------|------|--------|
| `dev-server-blocker.sh` | PreToolUse | Blocks dev server commands (use tmux) |
| `tmux-reminder.sh` | PreToolUse | Warns about long-running commands |
| `git-push-review.sh` | PreToolUse | Prompts before git push |
| `doc-file-blocker.sh` | PreToolUse | Blocks unnecessary doc file creation |
| `pr-creation-logger.sh` | PostToolUse | Logs PR URL and review commands |
| `auto-prettier.sh` | PostToolUse | Auto-formats JS/TS files |
| `typescript-check.sh` | PostToolUse | Type-checks after TS edits |
| `console-log-warning.sh` | PostToolUse | Warns about console.log |
| `console-log-audit.sh` | Stop | Audits modified files for console.log |
| `context-update-reminder.sh` | Stop | Reminds to document changes |
| `qmd-reindex.sh` | Stop | Reindexes qmd search |

## Recommended Plugins

Install with `claude plugins add <name>`:

| Plugin | Source | Description |
|--------|--------|-------------|
| `hookify` | claude-plugins-official | Hook rule creation/management |
| `typescript-lsp` | claude-plugins-official | TypeScript LSP integration |
| `context7` | claude-plugins-official | Library documentation lookup (MCP) |
| `serena` | claude-plugins-official | Semantic code analysis/editing (MCP) |
| `superpowers` | claude-plugins-official | Enhanced workflow skills |
| `ralph-loop` | claude-plugins-official | Iterative task loop management |
| `codex-review` | cc-plugins | OpenAI Codex code review |
| `skill-finder` | claude-plugin | Project-specific skill search |
| `plan-review-codex` | claude-plugin | Codex-based plan review |
| `plannotator` | plannotator | Interactive code review |

The first 6 are auto-installed via [INSTALL.md](INSTALL.md). The rest can be added manually.

## What's NOT Synced

| File | Reason |
|------|--------|
| `settings.json` | Hook paths contain machine-specific `$HOME` |
| `keybindings.json` | Personal key preferences |
| `settings.local.json` | Machine-specific permissions |
| `~/.claude.json` | Runtime state (84KB) |
| `claude_desktop_config.json` | Machine-specific MCP paths |
| `history.jsonl` | Conversation history |
| Runtime dirs (`tasks/`, `plans/`, etc.) | Auto-generated |
