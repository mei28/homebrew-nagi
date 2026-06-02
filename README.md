# homebrew-nagi

Homebrew tap for [Nagi (凪)](https://github.com/mei28/Nagi) — a flow-time work-session tracker for macOS.

## Install

```sh
brew install --cask mei28/nagi/nagi
```

Nagi is distributed unsigned (ad-hoc), so Gatekeeper may block it on first launch.
If so, install without the quarantine attribute:

```sh
brew install --cask --no-quarantine mei28/nagi/nagi
```

Alternatively, right-click `/Applications/Nagi.app` and choose **Open** on first launch.

## Upgrade / uninstall

```sh
brew upgrade --cask mei28/nagi/nagi
brew uninstall --cask mei28/nagi/nagi   # add --zap to also remove app data
```
