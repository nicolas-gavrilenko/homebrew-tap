cask "consort" do
  version "1.9.5"
  sha256 "9883d7c18dda673ce15b9b780e4ad09bd4ea626b0e1570c4db3fc4e227612c5f"

  url "https://downloads.consortaudio.com/consort/Consort-#{version}.dmg"
  name "Consort"
  desc "True stereo for any two speakers"
  homepage "https://consortaudio.com/"

  livecheck do
    url "https://downloads.consortaudio.com/consort/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Consort.app"

  zap trash: [
    "~/Library/Application Support/Consort",
    "~/Library/Caches/com.gavrilenko.Consort",
    "~/Library/HTTPStorages/com.gavrilenko.Consort",
    "~/Library/Preferences/com.gavrilenko.Consort.plist",
  ]
end
