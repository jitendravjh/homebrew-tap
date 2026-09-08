class Ghwork < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghwork"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.0/ghwork-aarch64-apple-darwin.tar.gz"
      sha256 "459c77c1b8064cec9c29ae77db432bbbc970e6f53bf97a04b71582d31f3ebc9f"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.0/ghwork-x86_64-apple-darwin.tar.gz"
      sha256 "d4678cb5009caf39d3d916be89a8bf05fdb2515cc7b964d0e9d65912d09ae761"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.0/ghwork-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8cc745a197862e1e3d43e4bdbd472f881aa4940b41ff76282f27bab76a5933a5"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.0/ghwork-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6111831430917f3ab157f8afac30c45753498af308047117f89ea468327c9fa"
    end
  end

  def install
    bin.install "ghwork"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghwork --help")
  end
end
