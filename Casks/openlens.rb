cask "openlens" do
  version "5.5.1"

  sha256 "9a307030bbe81281a2b61f88169957745198156210e7f32b4466aa1a8de6a9c1"

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
