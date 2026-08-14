class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.8.1/autoqa-v2.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "16e76f902fbcf72d0e0d87797af1ae0034176aa4ab2e36e18092619d465b938c"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.8.1/autoqa-v2.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "1fa058a8f9499ca64ac2d84f9236087e7c2b47c52220e5b2f7bc21a992928c00"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.8.1/autoqa-v2.8.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4120f5c17abc5cadaafd263900c830eae84bc55d6a011f1188aa082b406ce3d4"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
