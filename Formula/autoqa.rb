class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.1/autoqa-v2.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "7a55976130c906b50e655c9c701d9ee8cdaee47821c8c9cc8c8ccf8925b91ef8"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.1/autoqa-v2.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "ae7821020b6278cb226dc10319ab1a9e5886cc72ff12aa549e13ea0c59e067c7"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.1/autoqa-v2.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "59b8cc8f0d57c03152a63d91606bf7a605a574053f180edd8bd672fe4002df05"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
