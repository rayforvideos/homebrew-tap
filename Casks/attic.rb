cask "attic" do
  version "0.2.31"
  sha256 "959f6ddd6df57266a62082cd5547669703b8c64fa49116d7cd59d0a1c4017897"

  url "https://github.com/rayforvideos/attic/releases/download/v#{version}/Attic-#{version}.dmg"
  name "Attic"
  desc "Finds the files you stopped using but never deleted"
  homepage "https://rayforvideos.github.io/attic/"

  livecheck do
    url "https://github.com/rayforvideos/attic"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Attic.app"

  zap trash: [
    "~/Library/Application Support/Attic",
    "~/Library/Preferences/com.sangjunpark.attic.plist",
  ]
end
