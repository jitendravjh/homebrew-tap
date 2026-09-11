class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.1/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "07a07bc27e3dc7a0912f659923844a57a1e8fa404ef90f41a0cd310fbf745a1c"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.1/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "c8af9065cbedfbba05c022d2b5114fc2d5f8b7796c996c66e2fc664d6a1b9d0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.1/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "367f078455234fcb6b47f92d9200a99e12ece9bd8c25039c6f04510e1bcfd86e"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.1/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f12762330977612120483b8cf322dc354138433087b177b0811a1118c8884bb0"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
