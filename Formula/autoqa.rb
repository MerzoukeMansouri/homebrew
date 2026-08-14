class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.9.0/autoqa-v2.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "618f5a68394623f6931199eb36f36f3bf5305b3a0094a11c417412befe5ac3b5"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.9.0/autoqa-v2.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c66cb6bf70b96f918c849745e02fb57f69c0e9ff5b9695596f6628c7728f057"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.9.0/autoqa-v2.9.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "77b185f55f5aaf68a80acf30e307c41c42c6c8ce9a10d7ddf706d1c4cc7638c4"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
