class Pgit < Formula
  desc "K9s-style TUI for managing git operations across multiple repositories"
  homepage "https://github.com/MerzoukeMansouri/pgit"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.1.1/pgit-v1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "50b864a2aa056fe67afd90ea68be484e38dced70db750487d1b5ab2326cb8f9a"
    else
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.1.1/pgit-v1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "15cbfb42356a748cf6e37c26bba54ec1a219c2cb6969d654458683b59b7d9a3a"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.1.1/pgit-v1.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "320313172de7cf323f5c37d6ba9cd103eeabbe4b5d1832debbbcc6a33b1be28b"
  end

  def install
    bin.install "pgit"
  end

  test do
    system "#{bin}/pgit", "--help"
  end
end
