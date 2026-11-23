cask "consort" do
  version "1.9.10"
  sha256 "d4824265e6088a77db68efdc66bcff6e075f752ef68ae7754ee5e2ab8b5e323e"

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
