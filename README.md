# homebrew-tuistore

[![tests](https://github.com/Gheat1/homebrew-tuistore/actions/workflows/tests.yml/badge.svg)](https://github.com/Gheat1/homebrew-tuistore/actions/workflows/tests.yml)

Homebrew tap for [tuistore](https://github.com/Gheat1/tuistore), the TUI app store.

```sh
brew install gheat1/tuistore/tuistore
```

or

```sh
brew tap gheat1/tuistore
brew install tuistore
```

Upgrade:

```sh
brew upgrade tuistore
```

The formula installs into a private virtual environment (via
[`uv`](https://docs.astral.sh/uv/)) rather than vendoring every Python
dependency as Homebrew resources, since tuistore depends on
[ricekit](https://github.com/Gheat1/ricekit), which isn't published to PyPI.
`brew uninstall`/`brew upgrade` work normally — everything lives inside the
formula's own Cellar path.
