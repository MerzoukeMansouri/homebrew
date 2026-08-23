class Macsweep < Formula
  desc "CleanMyMac-style TUI for cleaning junk files and freeing RAM"
  homepage "https://github.com/MerzoukeMansouri/macsweep"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.3.0/macsweep-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "bca6fae2a0d25f3f0619fa6441502542f23f5081c5d08308ebc096d9d4ff4c4f"
    else
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.3.0/macsweep-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "351c9e3de54d72bc274469977059c2445b100e841f832dbdc40e90c85887f040"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.3.0/macsweep-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4982ab277574486c545ff2d1c789144d92aa7bb6e9e46c3d1de8b7185eb23067"
  end

  def install
    bin.install "macsweep"
  end

  test do
    system "#{bin}/macsweep", "--help"
  end
end
