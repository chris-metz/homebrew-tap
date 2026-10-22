cask "verdandi" do
  version "0.4.0"
  sha256 "675ada397c49d946e11fdcd9fce90e9ea56903394ec24767738129b871871784"

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
