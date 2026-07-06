# homebrew-tap

Personal Homebrew tap for [kiwixiao/syshud](https://github.com/kiwixiao/syshud),
a minimal macOS system monitor (menu bar or desktop overlay).

Install:

```bash
brew install kiwixiao/tap/syshud
```

To release a new syshud version: tag the syshud repo, compute the new
tarball's sha256 (`curl -sL <tag tarball url> | shasum -a 256`), update
`url` and `sha256` in `Formula/syshud.rb`, commit, push. Full procedure is
in the syshud README under "Making changes and releasing a new version".
