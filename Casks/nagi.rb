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

  # The app is unsigned (ad-hoc). Gatekeeper may block first launch; install with
  # `--no-quarantine`, or right-click the app and choose Open.
  zap trash: [
    "~/Library/Containers/com.waddlier.Nagi",
    "~/Library/Application Support/com.waddlier.Nagi",
  ]
end
