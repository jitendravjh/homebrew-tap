class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.2/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "301e784a17bbeda982560bce24a778b7c18ff1e0a0da5b20379b67d0b373b79b"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.2/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "4b7aaf81121dcdf69236db29aaeb23cf1a6c17fb74d8b0a2ed3cca9b9288d639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.2/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7462991b3430631ed64aed36006aefdb66a99166105d073e8700a3e1ccd3d367"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.2/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63b57d86c5b53c4947b67573e7c905031ddb477ae70f4294f85f2bb8400c852d"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
