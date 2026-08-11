class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.2/autoqa-v2.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "957e86d723170f8b64048b43ee45292b438cfa360b67d970eb33bb236035ad24"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.2/autoqa-v2.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "16d8a8c984e461d3e76050f594e9f2153a1a73b6704987189cfb17b050f4584a"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.2/autoqa-v2.2.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a8aab5dcfffc83d114aa0598cb2cca7a8149fe433d79ca8b69d821f0eceac157"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
