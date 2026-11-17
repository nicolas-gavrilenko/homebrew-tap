cask "consort" do
  version "1.9.7"
  sha256 "b26679497ffd5279c2a4a13bfa5682db2ba6861200b3f4f44f9be87dfb363487"

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
