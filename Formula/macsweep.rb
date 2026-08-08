class Macsweep < Formula
  desc "CleanMyMac-style TUI for cleaning junk files and freeing RAM"
  homepage "https://github.com/MerzoukeMansouri/macsweep"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.1.0/macsweep-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1a435b08520c3268fab1ee38009b112305223bdadd6a4e905aeea010869ce4ff"
    else
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.1.0/macsweep-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7d080f0e913a3daa882cb76f6cf21733c928621b3adcbce225fb1611a6b569c7"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.1.0/macsweep-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6da3e8050c424b52878a8624fabe30e67f26e105c7235487e7a9de3b86b388c"
  end

  def install
    bin.install "macsweep"
  end

  test do
    system "#{bin}/macsweep", "--help"
  end
end
