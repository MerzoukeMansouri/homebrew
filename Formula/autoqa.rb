class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.3.0/autoqa-v2.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "1a5533bb4803875a3cc1ac24b39e23081076b16afaca8c9f534ce3281af1da12"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.3.0/autoqa-v2.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f162759d42b20a8fcc93fb6a211c32c88c491a1d0d2fcfc619968d9c9d62e0f3"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.3.0/autoqa-v2.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "268b25d3a56e11f72e70fb167f20c3e6713302690fe997c60fb9c7fc2bc93e63"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
