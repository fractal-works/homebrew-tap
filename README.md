# Fractal Works Homebrew tap

Homebrew casks for apps by Fractal Works, Inc.

```sh
brew tap fractal-works/tap
brew trust --tap fractal-works/tap
brew install --cask fractal-works/tap/autorouter
```

Homebrew 7 loads casks from a tap outside Homebrew only after you trust it.

| Cask         | App                                                                                                                                  |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| `autorouter` | [AutoRouter](https://autorouter.com), the Mac app that adds every leading model to Codex, Claude Code and other AI tools (macOS 14+) |

AutoRouter updates itself through Sparkle once installed. Docs and the agent
setup guide live in [fractal-works/autorouter-docs](https://github.com/fractal-works/autorouter-docs).
