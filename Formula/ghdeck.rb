class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.1/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "328ee7f764ca61cff2ca8a7a4cae273b1d8277efa2d5377873de6fafefe8557c"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.1/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "9471009214e42d18f5bd7751f7cd26c377fac9a8ee1bc9888819f7f0ead80982"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.1/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "99bd3f983bcdea9d1b01550b301ccdbb37e7b0c15ef09697b01befa6ebd5bc42"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.1/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f653b7cc032b20d0779abb29e169b9a4663bc46bce1cc452e36a334898644beb"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
