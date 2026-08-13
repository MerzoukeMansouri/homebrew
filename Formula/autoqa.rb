class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.6.0/autoqa-v2.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "675cd597104968e9094080395c0823f4608dfe912f40f3ecf290698b73c40c90"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.6.0/autoqa-v2.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebc55101a527e0cf28f3ef9f7a70f49a10c8c47a2afe1bd28ff83053b68b63ba"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.6.0/autoqa-v2.6.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3b5a22f1868ecb17188e92c68fab833655ffab68aa65593802099b16779937df"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
