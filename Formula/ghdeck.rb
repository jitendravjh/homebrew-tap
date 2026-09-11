class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.0/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "f35836f7ca4c2e0d97c90e64753f8dc30b62fb5cadf3589a555278dfb05e21d6"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.0/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "537055c6ee6f336930bf89e3fee0375fa3d8f16e00ec5b17cb2abc6ca238b249"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.0/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed6041c3804f08841cdac79fcfb70100c70931627458887cfbeb30c7b3638367"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.0/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d1ab174711cdd311be9c7a7aee65ca1265374931a29d8e592e9ec350eafa5b8"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
