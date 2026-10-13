cask "verdandi" do
  version "0.2.0"
  sha256 "35ae8a52fc1bf4fb9342d494cbc1e197f72fcfd6459f0c285064a4ca3b35a612"

  url "https://github.com/chris-metz/verdandi/releases/download/v#{version}/Verdandi-#{version}-arm64.dmg"
  name "Verdandi"
  desc "Keyboard-first desktop client for GitHub issues across many repositories"
  homepage "https://github.com/chris-metz/verdandi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: "gh"
  depends_on macos: :ventura

  app "Verdandi.app"

  uninstall quit: "io.github.chris-metz.verdandi"

  zap trash: [
    "~/Library/Application Support/Verdandi",
    "~/Library/Preferences/io.github.chris-metz.verdandi.plist",
    "~/Library/Saved Application State/io.github.chris-metz.verdandi.savedState",
  ]
end
