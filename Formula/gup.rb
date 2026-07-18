class Gup < Formula
  desc "git add + commit + push with conventional commits and AI message generation"
  homepage "https://github.com/MerzoukeMansouri/gup"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.5.0/gup-v1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2314f9b7a6daca33de3caed1f6a5f3e765a3a716f2b3f2dbb91e4919a00cdee5"
    else
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.5.0/gup-v1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "7f7effae9765c177feb38454989b6d6388ba80116f3fa05a45f7a867e6a4a088"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.5.0/gup-v1.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "688b5bcff3ecbd4cb57c11c8d3bd6fbc4f4a9f4defb425dc0a1a5a119a115b55"
  end

  def install
    bin.install "gup"
  end

  test do
    system "#{bin}/gup", "--help"
  end
end
