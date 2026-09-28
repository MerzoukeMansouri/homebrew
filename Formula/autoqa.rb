class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.11.1/autoqa-v2.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "da80df966d1c69b8a2af9b64c6c484c2a7a9459c3d44d1267fafa1ff8c7ca3a4"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.11.1/autoqa-v2.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "d5deee03c484c63ba073a3adaa462ea1f03e4e6bef253e121caef0d5290d5bb4"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.11.1/autoqa-v2.11.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1e573cb1d950edbadb6f5c4464449892772184a55937df6bbbb7dc629ed56785"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
