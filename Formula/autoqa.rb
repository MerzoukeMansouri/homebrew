class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.10.0/autoqa-v2.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "11c4cfb39f315d40dfd17ca1206a95ba1a5abf346a86b34809be8332a41d111c"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.10.0/autoqa-v2.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "b89a721286966127182d4609ad669f9f7bb3a032f812044a8ee04d23b1c7d602"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.10.0/autoqa-v2.10.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6e8e71ada69d9f9d975c5c80b903438166e4bb6dff4ff6adaa630a4feb291f00"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
