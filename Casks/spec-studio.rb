cask "spec-studio" do
  version "0.1.1"
  sha256 "a08bfd516c796166a8ddb6a56223b1028dbaaaf4fb0857645da266b7ae0ea98f"

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
