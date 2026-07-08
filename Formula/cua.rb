class CuAgent < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/cu-agent"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.1.0/cua-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e08e8e3262db27768ae663c8aa2ac2f1503cb8a1fe1af4e6f28ecf0bbb9cd8a2"
    else
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.1.0/cua-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "05e9e573d9c3c3bc625160afd4695f5353b54e7683d7e7c274326e53c4d1238e"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.1.0/cua-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2b16b102a78b056928d6c3d33107b1b3e97a3aa270fa2467a8ecc93cb26c1d46"
  end

  def install
    bin.install "cua"
  end

  test do
    system "#{bin}/cua", "--help"
  end
end
