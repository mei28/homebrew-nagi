cask "nagi" do
  version "0.1.0"
  sha256 "f01bee9f2cd987b7e41a2c593f232dc6c260788975304f8047499a0620ff3e36"

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
