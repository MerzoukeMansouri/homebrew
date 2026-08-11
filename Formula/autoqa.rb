class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.1.0/autoqa-v2.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "cd0f3d22de2f8c26c8fc906917c11fa7d6a2770d2207819a002025915171f6ac"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.1.0/autoqa-v2.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0f5efb98ccb39e673ce5e9288217958b754a058d3a208b9376edce7190e58d25"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.1.0/autoqa-v2.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "221cebb1fffb706f672c8a042bb38b0617859f17fd2e19e45a4eac9db376ac9d"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
