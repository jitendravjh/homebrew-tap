class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.2/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "2a6e6488bf4655449c3f90202d09f493ede14afff3961c5d9896f3726e7dec2c"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.2/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "e275900943aee0e39750b0bcf8a1a0e58d13ce240b0092a52c385ca69e53b93a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.2/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "16498349a20bedb7c242d0b1c8bbfcb2a59c8a0cd42167b9bf48511d7b055356"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.2/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c69b02ae31a0f9d702db9ebb5277917b7c96ddf4af15c3f74995d54807f3690c"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
