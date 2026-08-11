class Autoqa < Formula
  desc "Drive a real Chrome browser via CDP from the CLI"
  homepage "https://github.com/MerzoukeMansouri/auto-qa"
  version "2.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.3/autoqa-v2.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "96473bf3ec792aefe78219055b45462862918476ed80528e3adf0601e3cb7049"
    else
      url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.3/autoqa-v2.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "3f3c49ca386249f3681be1674d2c710d1021750f87fe3ce2e474192e7287d743"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/auto-qa/releases/download/v2.2.3/autoqa-v2.2.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1ebf59e81b6e2b0dfd606ca7c18ab7e0dffb49d8626394c549ee3d534f002045"
  end

  def install
    bin.install "autoqa"
  end

  test do
    system "#{bin}/autoqa", "--help"
  end
end
