class Macsweep < Formula
  desc "CleanMyMac-style TUI for cleaning junk files and freeing RAM"
  homepage "https://github.com/MerzoukeMansouri/macsweep"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.0.0/macsweep-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "ddb51f24f3df877cf77ec90b59c4dd27c7a17ee4aa371ac794c17fcc304f56ae"
    else
      url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.0.0/macsweep-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "6d53964fac65dd54a87a0ae5c1592c7cb448da5128f1ca41bf5f2b5cedc760e6"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/macsweep/releases/download/v1.0.0/macsweep-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d5e383f0ebe3a44e06373f71d85a2937706de577f95db6aba92a084939e2f7f8"
  end

  def install
    bin.install "macsweep"
  end

  test do
    system "#{bin}/macsweep", "--help"
  end
end
