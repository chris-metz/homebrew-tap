cask "verdandi" do
  version "0.3.0"
  sha256 "9f65a84865a236c5995387f9323a1840a927942796f4e5d25ac81cb8c527d8ef"

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
