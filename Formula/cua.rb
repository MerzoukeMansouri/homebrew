class Cua < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/cu-agent"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.2.0/cua-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "baacc773c6816d08f0d415adba55822a7a5382b60b367932751bf58c44a22611"
    else
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.2.0/cua-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "10089b2a338aa7e8323061546e7022074c7b1eeef26625508ee7fdb923d580b0"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.2.0/cua-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eeabfb977eb2c2fcba08957d1e6a6f60bdfaee9973b9b0b036e92b563036fb6f"
  end

  def install
    bin.install "cua"
  end

  test do
    system "#{bin}/cua", "--help"
  end
end
