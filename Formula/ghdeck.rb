class Ghdeck < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghdeck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.0/ghdeck-aarch64-apple-darwin.tar.gz"
      sha256 "cb2df4418c274eb7f29a7b258dcb6f33d175d426ff1c8e7aecaede79ffb358b6"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.0/ghdeck-x86_64-apple-darwin.tar.gz"
      sha256 "89c29791962f236301025076749e33078b7094b2baf31b3ace2282c8ac278b9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.0/ghdeck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02efcef5984c18d7775c539d099262bf641f9c85528f18ed800b54377fcdb339"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghdeck/releases/download/v0.2.0/ghdeck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91627c16204fbb9efeb5531554ec01db6435571337f4af4fdf62bd95dfc19f6c"
    end
  end

  def install
    bin.install "ghdeck"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghdeck --help")
  end
end
