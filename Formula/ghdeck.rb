class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.1.0/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "c58fdad5e0ec4aa2ab6ec5e0659f1d2bc566a6e09fa04998175644f3c3b17978"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.1.0/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "1d9ff0dc56dbc57ebc537ab834521e88a7e84c62a3a6f0e0d03a7702681dda8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.1.0/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c33db59f2cb01d0d4e428c53d204d15f4e924eb241f802ff2c08d0136a2c827f"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.1.0/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66bbe7bab788c2ee2a535d0128010a562832a3747ac4daf2cba936d477f8edd1"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
