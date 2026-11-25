cask "spec-studio" do
  version "0.2.1"
  sha256 "b3fa494309e77a83e70c660cc742f66b482f02e0b2b8f29cb7f097d50c684769"

  url "https://github.com/spec-studio-app/site/releases/download/v#{version}/Spec-Studio-#{version}.dmg"
  name "Spec Studio"
  desc "Spec-driven development with Claude Code"
  homepage "https://spec-studio-app.github.io/site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spec Studio.app"

  zap trash: [
    "~/Library/Application Support/Spec Studio",
    "~/Library/Caches/dev.local.spec-studio",
    "~/Library/Caches/Spec Studio",
    "~/Library/HTTPStorages/dev.local.spec-studio",
    "~/Library/Preferences/dev.local.spec-studio.plist",
    "~/Library/WebKit/dev.local.spec-studio",
  ]
end
