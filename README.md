# homebrew-nagi

Homebrew tap for [Nagi (凪)](https://github.com/mei28/Nagi) — a flow-time work-session tracker for macOS.

## Install

```sh
brew install --cask mei28/nagi/nagi
```

Nagi is distributed unsigned (ad-hoc), so macOS quarantines it and Gatekeeper
blocks the first launch. After installing, do one of:

- Right-click `/Applications/Nagi.app` → **Open**, then confirm, **or**
- System Settings → Privacy & Security → **Open Anyway**, **or**
- clear the quarantine attribute, then open normally:

  ```sh
  xattr -dr com.apple.quarantine /Applications/Nagi.app
  ```

## Upgrade / uninstall

```sh
brew upgrade --cask mei28/nagi/nagi
brew uninstall --cask mei28/nagi/nagi   # add --zap to also remove app data
```
