cask "attic" do
  version "0.2.26"
  sha256 "83379ff5cabce8d90b4f1c7d39af85d183638d40c66918a4027ba288f84ef93a"

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
