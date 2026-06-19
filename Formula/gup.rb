class Gup < Formula
  desc "git add + commit + push with conventional commits and AI message generation"
  homepage "https://github.com/MerzoukeMansouri/gup"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.0.0/gup-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "545078d1cc8f80a486e661ff6c5f847aadeba21ab26f92654b3f85c51a07d5cb"
    else
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.0.0/gup-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "44612b2a0e6557c3e71607ab805ebe6c4ae6982fa6c920f768138d6f55a1c4a9"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.0.0/gup-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "db350b3c093d216e0f36ca7ba135a68881ba4f779f626e08f8134d5a0b328a14"
  end

  def install
    bin.install "gup"
  end

  test do
    system "#{bin}/gup", "--help"
  end
end
