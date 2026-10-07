cask "verdandi" do
  version "0.1.0"
  sha256 "6d23058c4d54cd443b659b95f42c50ab4352b5f247d5e3bd534feb836001b0fe"

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
