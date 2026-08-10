cask "attic" do
  version "0.2.27"
  sha256 "9433114233c6daf68064cb523249a8f82672059a58983f1d3092d1cb9d37228e"

  url "https://github.com/rayforvideos/attic/releases/download/v#{version}/Attic-#{version}.dmg"
  name "Attic"
  desc "Finds the files you stopped using but never deleted"
  homepage "https://rayforvideos.github.io/attic/"

  livecheck do
    url "https://github.com/rayforvideos/attic"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Attic.app"

  zap trash: [
    "~/Library/Application Support/Attic",
    "~/Library/Preferences/com.sangjunpark.attic.plist",
  ]
end
