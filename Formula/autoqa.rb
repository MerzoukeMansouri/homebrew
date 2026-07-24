class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.0.0/autoqa-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "dc3ffae1e10414e843ada188d998a0de272861fd28992bfbf3e476fa863c96f5"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.0.0/autoqa-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "c36df94bee6685703ec9415e5192fe9a02e6c1efbd77110072ce86f107f1fd34"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.0.0/autoqa-v2.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "69b88f72aa24e5ad4e254c8f33d3c949b98b235cc7f9662b36d6d64074e04cba"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
