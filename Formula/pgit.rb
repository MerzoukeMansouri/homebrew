class Pgit < Formula
  desc "K9s-style TUI for managing git operations across multiple repositories"
  homepage "https://github.com/MerzoukeMansouri/pgit"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.3.0/pgit-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "31905e74a7ca01dc1b5afc3df0e1f42708bcca44307c2d7bc44ef84ac363671d"
    else
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.3.0/pgit-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "577f58501b8f2625aa91aa7cba22af595d6d1f386a532cfc10e02786b4d0e743"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.3.0/pgit-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a92b29df79ae419cc82eeb6050ff629f65a25e1afcd8a682b2430d4f0a9d77e4"
  end

  def install
    bin.install "pgit"
  end

  test do
    system "#{bin}/pgit", "--help"
  end
end
