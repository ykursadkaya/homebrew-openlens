cask "openlens" do
  version "6.0.2"

  sha256 "4e27e8305d2cb32f2ba79fe17a0ba39ffa5d69a78ed6518e56f68cf8d0266151"

  url "https://github.com/ykursadkaya/homebrew-openlens/releases/download/v#{version}/OpenLens-#{version}.zip"
  name "Open Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://raw.githubusercontent.com/ykursadkaya/homebrew-openlens/main/version"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)/)
  end

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Caches/OpenLens",
    "~/Library/Logs/OpenLens",
    "~/Library/Preferences/com.electron.open-lens.plist",
    "~/Library/Saved Application State/com.electron.open-lens.savedState",
  ]
end
