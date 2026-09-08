class Ghwork < Formula
  desc "All your GitHub work in one list, PRs and issues together sorted by last update"
  homepage "https://github.com/jitendravjh/ghwork"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.2/ghwork-aarch64-apple-darwin.tar.gz"
      sha256 "2625fe114a48274d4617940515915ba02305b0e4b31bd7d8f4c2e7ba9a589f20"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.2/ghwork-x86_64-apple-darwin.tar.gz"
      sha256 "159b4f7ee12e18f2d992fc42717481ff425dd66fc34b46f7384e977f2497b83d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.2/ghwork-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59c56156ac54aa73cab4976c5288ccb00ba19f3d6397fb17a1decc31448a2c43"
    end
    on_intel do
      url "https://github.com/jitendravjh/ghwork/releases/download/v0.1.2/ghwork-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3a5c1237a7f0dc0268c88721439fac7092a4b8fe24e221bb8ee49f3899f424b"
    end
  end

  def install
    bin.install "ghwork"
  end

  test do
    assert_match "all your github work", shell_output("#{bin}/ghwork --help")
  end
end
