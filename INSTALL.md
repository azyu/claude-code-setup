# Install via Claude Code

Copy the prompt below and paste it into Claude Code to install this configuration.

---

## Copy This Prompt

```
Install Claude Code configuration from https://github.com/azyu/claude-code-setup

Fetch and install these files to ~/.claude/:

**Global Instructions**:
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/CLAUDE.md → ~/.claude/CLAUDE.MD

**Rules** (path-scoped instructions):
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/rules/agents.md → ~/.claude/rules/agents.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/rules/coding-style.md → ~/.claude/rules/coding-style.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/rules/git-workflow.md → ~/.claude/rules/git-workflow.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/rules/hooks.md → ~/.claude/rules/hooks.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/rules/patterns.md → ~/.claude/rules/patterns.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/rules/performance.md → ~/.claude/rules/performance.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/rules/security.md → ~/.claude/rules/security.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/rules/testing.md → ~/.claude/rules/testing.md

**Agents** (custom subagents):
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/architect.md → ~/.claude/agents/architect.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/build-error-resolver.md → ~/.claude/agents/build-error-resolver.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/code-reviewer.md → ~/.claude/agents/code-reviewer.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/database-reviewer.md → ~/.claude/agents/database-reviewer.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/doc-updater.md → ~/.claude/agents/doc-updater.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/e2e-runner.md → ~/.claude/agents/e2e-runner.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/planner.md → ~/.claude/agents/planner.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/refactor-cleaner.md → ~/.claude/agents/refactor-cleaner.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/security-reviewer.md → ~/.claude/agents/security-reviewer.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/agents/tdd-guide.md → ~/.claude/agents/tdd-guide.md

**Commands** (slash commands):
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/act.md → ~/.claude/commands/act.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/build-fix.md → ~/.claude/commands/build-fix.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/code-review.md → ~/.claude/commands/code-review.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/e2e.md → ~/.claude/commands/e2e.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/log.md → ~/.claude/commands/log.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/plan.md → ~/.claude/commands/plan.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/plannotator-review.md → ~/.claude/commands/plannotator-review.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/refactor-clean.md → ~/.claude/commands/refactor-clean.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/tdd.md → ~/.claude/commands/tdd.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/test-coverage.md → ~/.claude/commands/test-coverage.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/update-codemaps.md → ~/.claude/commands/update-codemaps.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/update-docs.md → ~/.claude/commands/update-docs.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/verify.md → ~/.claude/commands/verify.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/checkpoint.md → ~/.claude/commands/checkpoint.md
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/commands/orchestrate.md → ~/.claude/commands/orchestrate.md

**Hooks** (event-triggered scripts):
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/pre-tool-use/dev-server-blocker.sh → ~/.claude/hooks/pre-tool-use/dev-server-blocker.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/pre-tool-use/tmux-reminder.sh → ~/.claude/hooks/pre-tool-use/tmux-reminder.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/pre-tool-use/git-push-review.sh → ~/.claude/hooks/pre-tool-use/git-push-review.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/pre-tool-use/doc-file-blocker.sh → ~/.claude/hooks/pre-tool-use/doc-file-blocker.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/post-tool-use/auto-prettier.sh → ~/.claude/hooks/post-tool-use/auto-prettier.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/post-tool-use/console-log-warning.sh → ~/.claude/hooks/post-tool-use/console-log-warning.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/post-tool-use/pr-creation-logger.sh → ~/.claude/hooks/post-tool-use/pr-creation-logger.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/post-tool-use/typescript-check.sh → ~/.claude/hooks/post-tool-use/typescript-check.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/stop/console-log-audit.sh → ~/.claude/hooks/stop/console-log-audit.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/stop/context-update-reminder.sh → ~/.claude/hooks/stop/context-update-reminder.sh
- https://raw.githubusercontent.com/azyu/claude-code-setup/main/hooks/stop/qmd-reindex.sh → ~/.claude/hooks/stop/qmd-reindex.sh

**CRITICAL: Do NOT overwrite existing files.**

Before installing each file:
1. Check if the destination file already exists
2. If it does NOT exist → install it
3. If it DOES exist → ask the user what to do:
   - **Skip**: Keep their existing file unchanged
   - **Overwrite**: Replace with the new version
   - **Merge**: Intelligently combine both versions

This is especially important for ~/.claude/CLAUDE.MD which contains personal preferences. Never overwrite without explicit user consent.

Create directories as needed, fetch files with curl, and make all hook scripts (.sh files) executable.

After installation, install these plugins:
- claude plugins add hookify@claude-plugins-official
- claude plugins add typescript-lsp@claude-plugins-official
- claude plugins add context7@claude-plugins-official
- claude plugins add serena@claude-plugins-official
- claude plugins add superpowers@claude-plugins-official
- claude plugins add ralph-loop@claude-plugins-official
```

---

## What Gets Installed

| Component | Files | Description |
|-----------|-------|-------------|
| CLAUDE.md | 1 | Global behavioral guidelines |
| Rules | 8 | Coding style, security, testing, Git workflow, etc. |
| Agents | 10 | Architect, TDD guide, code reviewer, database reviewer, planner, etc. |
| Commands | 15 | /plan, /tdd, /code-review, /verify, /checkpoint, /orchestrate, etc. |
| Hooks | 11 | Pre/post tool-use automation, session-end audits |
| Plugins | 6 | MCP servers, code review, workflow tools |

## After Installation

Restart Claude Code or start a new session for changes to take effect.

To verify: ask Claude "What agents and commands are available?"
