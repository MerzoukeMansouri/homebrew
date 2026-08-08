class Macsweep < Formula
  desc "CleanMyMac-style TUI for cleaning junk files and freeing RAM"
  homepage "https://github.com/MerzoukeMansouri/macsweep"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.2.0/macsweep-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d7676185833e62588ef8df49941525b928d5f5b1245b671a665effcb7f4f337c"
    else
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.2.0/macsweep-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "d52a0482bd3480b23a682579144cf380b737c58efa17bca03ebe377fc5f16bfe"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.2.0/macsweep-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b55ade19ff8ccbe90dd05343d13087e52c9c96c8f7fdd9d4ffd66469896b3f29"
  end

  def install
    bin.install "macsweep"
  end

  test do
    system "#{bin}/macsweep", "--help"
  end
end
