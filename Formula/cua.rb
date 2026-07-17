class Cua < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/cu-agent"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.3.0/cua-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "80a816516b1d592f6e1f4771728b4bd8a077e3f7faf3de7f1b91e5722d86cce5"
    else
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.3.0/cua-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "e3db8b1ed07aea95a0c1a8f432ac25fc69c2c328a5d1a84bf474a5c30e208edf"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.3.0/cua-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9743f2cbe43ace89e4828f554e64c9da528a25e8d72c2d162470497b436ea995"
  end

  def install
    bin.install "cua"
  end

  test do
    system "#{bin}/cua", "--help"
  end
end
