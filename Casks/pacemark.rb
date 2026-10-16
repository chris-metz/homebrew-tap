cask "pacemark" do
  version "1.2.1"
  sha256 "698a172d38fd1c9215393afe7f8fcfa725c38772a2b06f0ac36fe31cdbb0bdec"

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
