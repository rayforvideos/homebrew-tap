cask "attic" do
  version "0.2.25"
  sha256 "1a81c6aa6f781e90e337f21bf49e1ca2115e8b94db86c726a7379af800c4a41f"

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
