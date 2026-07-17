class Cua < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/cu-agent"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.3.1/cua-v1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "39a2cce4aba678ef74faa5a62527662c935d2bcf02e2cc974a68074627c03d6b"
    else
      url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.3.1/cua-v1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "b8a1b9f8277839a185c64e751f85f0166daa9e3cd24d3d159b27e1985c18d072"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/cu-agent/releases/download/v1.3.1/cua-v1.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "81f182725b436c7fba7a77ec6ec66925a1e92ae0aed84b5201f0c48dc2083a26"
  end

  def install
    bin.install "cua"
  end

  test do
    system "#{bin}/cua", "--help"
  end
end
