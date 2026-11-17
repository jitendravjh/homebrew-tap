class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.1/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "51c35b27ddabed230299bb97345000976aa1b0052a6eb14a3df71c3dd23ec435"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.1/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "7deb34cf2f3ac6b0a93abc027abc607a86db58fda3c67d7e150543cb5f5ec506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.1/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f010e5ecda5ce815c33d8a36fceb6951882ea238afdfb7635d28657474785b7"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.1/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16286f4302cf85da4199a1ab7fae699697c0501f278fcf039fcfacc0d7c22b28"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
