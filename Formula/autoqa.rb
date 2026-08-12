class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.5.0/autoqa-v2.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "42b68ac3a27747fa58081eb2b67c4d21fedc9af5e85c08ba7e235e787f5149e8"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.5.0/autoqa-v2.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8c2c50ff06b976bed8b52d4fe00d8bfaaca58b89be268c793f1564ff0431ba8"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.5.0/autoqa-v2.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4dd8155dca5b9b50e37e50f21ca8c73a95e25a2b534843fca9bd1462a07ed876"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
