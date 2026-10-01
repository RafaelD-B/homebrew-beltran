# homebrew-beltran

Homebrew tap for [belt.ran](https://belt-ran.com) — the polyglot database cockpit.

```sh
brew install --cask rafaeld-b/beltran/beltran
```

The app is signed with a Developer ID and notarized by Apple. The cask also puts the
`beltran` binary on your `PATH`, so registering the MCP server for AI agents is just:

```sh
claude mcp add --scope user beltran -- beltran mcp
```
