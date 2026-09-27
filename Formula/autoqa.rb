class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.11.0/autoqa-v2.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "ea90c1fe43ea0e7a5f4a654380daaf30f46317637ba5ddfd44cf2287cb0a7b88"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.11.0/autoqa-v2.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "6b4f754dd51f200b3c043354fb1f7d0d391db35057c5d8f399a7ee2e03ea5c69"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.11.0/autoqa-v2.11.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "94145609a14a1140a3d5185e038d022c31e2055b5b12b2d0cb150955c364a0ca"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
