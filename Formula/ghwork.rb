class Ghwork < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghwork"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.1/ghwork-aarch64-apple-darwin.tar.gz"
      sha256 "caf63fcd7334057981d1f03b49aacb8881f1caa0a9c3cb01cadaca4509d814b5"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.1/ghwork-x86_64-apple-darwin.tar.gz"
      sha256 "019831767665be0e865685c838b6b85a3357b746b60096a027e1324291215ef8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.1/ghwork-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf61cf4b4989ebfbe137c5ca92f39f90f786d24909b83f500c33ded09a26c5d9"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.1/ghwork-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d7153c60c0aefe8454ba646071368f4fb5a7545b6a1f56628779005d47e20d36"
    end
  end

  def install
    bin.install "ghwork"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghwork --help")
  end
end
