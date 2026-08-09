cask "attic" do
  version "0.2.24"
  sha256 "1ec808a49a417c91a9df97cd3d847c76ad500f8d0f9f962a695e163a8c9ec2e2"

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
