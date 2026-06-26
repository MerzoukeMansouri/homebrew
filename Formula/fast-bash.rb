class FastBash < Formula
  desc "Claude Code PreToolUse hook: rewrites grep→rg, find→fd, blocks dangerous shell commands"
  homepage "https://github.com/MerzoukeMansouri/pre-tool-hook"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/pre-tool-hook/releases/download/v1.1.0/fast-bash-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "dcf82b38fd960bd569d4a61a29ffbeac33dfcae15bc89364203c91da8c29f228"
    else
      url "https://github.com/MerzoukeMansouri/pre-tool-hook/releases/download/v1.1.0/fast-bash-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a013f255fd5567ce7d7682bc6d74a7eb0d645a0ba3a3b2b881dc57912bb0937c"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/pre-tool-hook/releases/download/v1.1.0/fast-bash-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "22173272af0d7c7572acb29ce3e7661d0ecd3420e31e0b12014592ee018723d3"
  end

  def install
    bin.install "fast-bash"
  end

  test do
    system "#{bin}/fast-bash", "--help"
  end
end
