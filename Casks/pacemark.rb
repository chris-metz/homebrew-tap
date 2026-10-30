cask "pacemark" do
  version "1.4.0"
  sha256 "e282ac839d89919d727ec01973969f30a4f958439d2e1993c80f3da635e38469"

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
