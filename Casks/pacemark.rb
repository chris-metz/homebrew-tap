cask "pacemark" do
  version "1.3.0"
  sha256 "76a1b10569eb610181416da9a775fcdb49cd162969441f101a7c889733fc228b"

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
