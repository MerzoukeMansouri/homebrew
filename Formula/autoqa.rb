class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.7.0/autoqa-v2.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "4cd34f7754a2245b270b6b8194ab5ce6c1ca4c79f55a63a6b761b3b840af0b35"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.7.0/autoqa-v2.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "8559b9e1f22c2535924099e94a8a4ded5a8e525b5bc9f950bf7672475e828ce9"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.7.0/autoqa-v2.7.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2cda52d5b21b351cc922b0a70ef75545ddf8f631d74d4d7b62bb66b67b8be340"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
