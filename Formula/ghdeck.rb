class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.0/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "7992b1aa773196e9179ee223526eda9d10bb6d60c21691840b71eaad73a787f0"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.0/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "3c9bd8151100ae0d58fdec455a8209ead6a7f2dfe127f29162a23ac33b033feb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.0/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a26da43f90efb21c4d2ce3930bc733a23e6d5e063fa8ef6d5c372533cb020dcd"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.3.0/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1307222863f58f88987b923e72430ed060fc3d24f82ff334dd19fff0a9ca7cae"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
