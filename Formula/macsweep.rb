class Macsweep < Formula
  desc "CleanMyMac-style TUI for cleaning junk files and freeing RAM"
  homepage "https://github.com/MerzoukeMansouri/macsweep"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.4.0/macsweep-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "6e48063a1a1163d66e7803009e8e916764857da9a3730217548affb18d0488d0"
    else
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.4.0/macsweep-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "73bc65a9f2801f43f0635accc1891dd2e62571a6cf422cbe400ca370d0bfcac8"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.4.0/macsweep-v1.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a933b953fe21c19049b6ae81feec5bf1eb47117266e36a05e1d7ca5b9c25ee59"
  end

  def install
    bin.install "macsweep"
  end

  test do
    system "#{bin}/macsweep", "--help"
  end
end
