class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.6.1/autoqa-v2.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "cec6155b04d510d9bec1ba45c515e57c8cbd21e590913ff4397dc2b8652781bd"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.6.1/autoqa-v2.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "f8f0273ce98ff58dbe8184ba5c19acba74dbf8143cdc6ad48d2d8172bb21e592"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.6.1/autoqa-v2.6.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a85358a1ffe736747e8918f5d15f528af605079b17a62bffe55faf2db0eb8c8e"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
