class Grove < Formula
  desc "Durable AI agents — one binary runs the dev stack and the agent runtime"
  homepage "https://grove.frnly.io"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rossnelson/grove-sdk/releases/download/cli-v0.1.0/grove_0.1.0_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/rossnelson/grove-sdk/releases/download/cli-v0.1.0/grove_0.1.0_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rossnelson/grove-sdk/releases/download/cli-v0.1.0/grove_0.1.0_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/rossnelson/grove-sdk/releases/download/cli-v0.1.0/grove_0.1.0_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grove version")
  end
end
