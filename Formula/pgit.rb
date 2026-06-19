class Pgit < Formula
  desc "K9s-style TUI for managing git operations across multiple repositories"
  homepage "https://github.com/MerzoukeMansouri/pgit"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.2.0/pgit-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7d3a4c7d21ff7947556347531c4f1459b73c2f8c7125171a73872dc05d91baa4"
    else
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.2.0/pgit-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e5e9cb1f0a569ab478faa838f49f28d3f75e9eea326b887d26ad99d7f5d218dd"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.2.0/pgit-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9bac50ab6798c70c66a1a68613953195a994f317013111b87b3847752146dd7f"
  end

  def install
    bin.install "pgit"
  end

  test do
    system "#{bin}/pgit", "--help"
  end
end
