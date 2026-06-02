cask "nagi" do
  version "0.2.0"
  sha256 "dc1a642c41239dc08f3d1f3b49b972f991d1a44f0a34d61d934f0c55fd0c3bf6"

  url "https://github.com/mei28/Nagi/releases/download/v#{version}/Nagi-#{version}.zip",
      verified: "github.com/mei28/Nagi/"
  name "Nagi"
  desc "Flow-time work-session tracker for macOS"
  homepage "https://github.com/mei28/Nagi"

  depends_on macos: ">= :sonoma"

  app "Nagi.app"

  # The app is unsigned (ad-hoc). macOS quarantines it, so Gatekeeper blocks the
  # first launch. After install, right-click Nagi.app and choose Open, use
  # System Settings > Privacy & Security > Open Anyway, or run:
  #   xattr -dr com.apple.quarantine /Applications/Nagi.app
  zap trash: [
    "~/Library/Containers/com.waddlier.Nagi",
    "~/Library/Application Support/com.waddlier.Nagi",
  ]
end
