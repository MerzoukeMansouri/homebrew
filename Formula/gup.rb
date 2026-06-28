class Gup < Formula
  desc "git add + commit + push with conventional commits and AI message generation"
  homepage "https://github.com/MerzoukeMansouri/gup"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.4.0/gup-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "6373c965f942c99323c2537f8a6066edbff1cd134de81c7acd2f650a5ed712b8"
    else
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.4.0/gup-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "c27e261d41b303a017645a82b5e98a4ca465d5d07d98765b58f97a3ad978ceb7"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.4.0/gup-v1.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "31ede42a5de2b785722e818094eea8499d5477d585a384671ba91817d3895e12"
  end

  def install
    bin.install "gup"
  end

  test do
    system "#{bin}/gup", "--help"
  end
end
