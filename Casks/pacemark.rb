cask "pacemark" do
  version "1.1.0"
  sha256 "3d92deed30d834e626353dc78a8ba7bc59dd4c9ba8949d4b189965be852805cd"

  url "https://github.com/chris-metz/pacemark/releases/download/v#{version}/Pacemark-#{version}.dmg"
  name "Pacemark"
  desc "Menu bar app showing how much of your AI subscription limits you have used"
  homepage "https://github.com/chris-metz/pacemark"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :golden_gate

  app "Pacemark.app"

  uninstall quit: "xyz.chrismetz.pacemark"

  zap trash: [
    "~/Library/Caches/xyz.chrismetz.pacemark",
    "~/Library/Preferences/xyz.chrismetz.pacemark.plist",
  ]
end
