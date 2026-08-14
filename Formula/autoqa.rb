class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.8.0/autoqa-v2.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "9e20a03956beb7241a2f0372288b2ec996835f6b3ca365910c7e44dd1902ef95"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.8.0/autoqa-v2.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "604c03210e302ad0c3a6ab1e5c99e81e9c453f3fe79338b20604f78433f51182"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.8.0/autoqa-v2.8.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d38bd3c5e43b8f4c4803424db5eb79bdcbd80bb64fa556012eeccc23f7b5c3bf"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
