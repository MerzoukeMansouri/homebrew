class Pgit < Formula
  desc "K9s-style TUI for managing git operations across multiple repositories"
  homepage "https://github.com/MerzoukeMansouri/pgit"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.0.0/pgit-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2e75e80c71d0d64fefc6c183af2269e9ca15980b5211b9c1194bbaa62d01574"
    else
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.0.0/pgit-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "f2b197c10030b8254a053180367c5dcf50bf7d4b2d211cb0503a307d09364f83"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.0.0/pgit-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "39eec4d30df385118d689a3adef2a47e04fe5f21e2a96bdb956499d0e3b238ac"
  end

  def install
    bin.install "pgit"
  end

  test do
    system "#{bin}/pgit", "--help"
  end
end
