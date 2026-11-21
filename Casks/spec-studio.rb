cask "spec-studio" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/rossnelson/spec-studio-site/releases/download/v#{version}/Spec-Studio-#{version}.dmg"
  name "Spec Studio"
  desc "Spec-driven development with Claude Code"
  homepage "https://rossnelson.github.io/spec-studio-site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Spec Studio.app"

  zap trash: [
    "~/Library/Application Support/Spec Studio",
    "~/Library/Preferences/dev.local.spec-studio.plist",
  ]
end
