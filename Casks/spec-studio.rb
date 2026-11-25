cask "spec-studio" do
  version "0.2.0"
  sha256 "c48c74fc81afb7d35f75787aef29337e1a6bd23db6829bf34f7eed8b3d42e604"

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
