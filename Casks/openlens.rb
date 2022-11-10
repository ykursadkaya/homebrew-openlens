cask "openlens" do
  version "6.1.18"

  sha256 "c1ce0d94582356a722fcf5b5374f6d26db5240027cd86e7347669ad0d0241140"

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
