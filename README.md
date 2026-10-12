# Homebrew tap for simem

[simem — Super Intelligence Memory](https://github.com/thinhledev/simem): local project memory for AI coding agents, shared across every agent and account, with fewer tokens per session.

```bash
brew tap thinhledev/simem
brew install simem
simem init
```

Or in one step: `brew install thinhledev/simem/simem`. Homebrew installs its own Node.js for simem, so you don't need one. Then restart the Claude Code and Codex apps.

Upgrade with `brew upgrade simem`. Remove with `simem init --remove`, then `brew uninstall simem`.

The formula is generated for each release by [`scripts/homebrew-formula.sh`](https://github.com/thinhledev/simem/blob/master/scripts/homebrew-formula.sh) from the package published on npm ([`@simem/cli`](https://www.npmjs.com/package/@simem/cli)). Report problems at https://github.com/thinhledev/simem/issues.
