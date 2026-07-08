class CuAgent < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/cu-agent"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.0.0/cua-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "251ba316633854344ed21563936f95249a5336465e103105c932816362bd1d01"
    else
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.0.0/cua-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "f11fac23094dd2d81e33dc3976f739470e6a50f978d771524a517b16f02fae45"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.0.0/cua-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b290b7baabdeda2df4dad45d2b679a286f69784a221b5ae53ed88de4dde51837"
  end

  def install
    bin.install "cua"
  end

  test do
    system "#{bin}/cua", "--help"
  end
end
