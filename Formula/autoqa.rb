class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.0/autoqa-v2.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "53a029b950bf1b661c788f43783ae17ed898ea53f578422b3a1e614b44d0332d"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.0/autoqa-v2.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "02b8a1f0e145cac3d47e784266fb73c0ea627df1bae4be3d0e0ce1a513e37ff8"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.0/autoqa-v2.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d88f5cd47f829e0bf9122088fe9a9928fd0eda8dc8298660f6ec5cd45a193dd9"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
