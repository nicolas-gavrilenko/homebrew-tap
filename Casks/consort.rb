cask "consort" do
  version "1.9.4"
  sha256 "e415e91a95bb21d6bb4e5dc8d0d580d32acce040cfdfdaf0a453b9a88ef96ab1"

  url "https://downloads.consortaudio.com/consort/Consort-#{version}.dmg",
      verified: "downloads.consortaudio.com/consort/"
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
