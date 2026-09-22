cask "antigravity-spaces" do
  version "1.1.0"
  sha256 "846a28175f2e0c5cd7e841aee185786eb361ddb9e8e7a26bc7e3282d255daf2e"

  url "https://github.com/ApollosWave/antigravity-spaces/releases/download/v#{version}/Antigravity-Spaces.dmg"
  name "Antigravity Spaces"
  desc "Native workspace switcher for Antigravity IDE on macOS"
  homepage "https://github.com/ApollosWave/antigravity-spaces"

  depends_on macos: ">= :monterey"

  app "Antigravity Spaces.app"

  zap trash: [
    "~/Library/Preferences/com.apolloswave.antigravity-spaces.plist",
  ]
end
