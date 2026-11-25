cask "consort" do
  version "1.9.12"
  sha256 "6bb7b2a6fc1caec699cdabd07b8fb4c182b7b2b99fe1fa6b51e076db2c1d7ef8"

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
