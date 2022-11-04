cask "openlens" do
  version "6.1.15"

  sha256 "49253f02c930d6317b68954167ea8fbadfe4674429252543513073308d1f563f"

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
