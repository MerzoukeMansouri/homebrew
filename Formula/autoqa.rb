class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.7.1/autoqa-v2.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c82df149b816859438639ab6d508692ad03b2e01e17d8fb0f331f2341352e09"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.7.1/autoqa-v2.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "ee407cc61882904223c6f00506b4cbc1f763e245cf65c9c01d0d330552ba4270"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.7.1/autoqa-v2.7.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "48a37059656bbe53a090eab65bcf543d1c37fa50a55000960c5f2ca833c0bc9b"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
