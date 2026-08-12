class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.4.0/autoqa-v2.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "303817c0593dcccae8c7777fa96812fb78475348703a4cff287971702391a78d"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.4.0/autoqa-v2.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "c14edd9888a3fecbf255c5baaf8d54dc6e23b40c1bba682d43f60a0cb7aa4671"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.4.0/autoqa-v2.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "09e4eeb9d0b04889facae884da64ff8d7288ca98ba57788e7262188d42fdfe75"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
