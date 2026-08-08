class Macsweep < Formula
  desc "CleanMyMac-style TUI for cleaning junk files and freeing RAM"
  homepage "https://github.com/MerzoukeMansouri/macsweep"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.0.1/macsweep-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "81c2ac52ab035b99baa70b22a69fe4a58f60fad204b2dd524535f58fd4c07b77"
    else
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.0.1/macsweep-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "ce88a98ff84aaad61385d83a0d4b11128bdf046ad1a40dd666787c202327686f"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.0.1/macsweep-v1.0.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "db3ec745c51197a55e17ae0634219ae06e80e1293552f917586d7931eca90914"
  end

  def install
    bin.install "macsweep"
  end

  test do
    system "#{bin}/macsweep", "--help"
  end
end
