class Spindle < Formula
  desc "Source-code component installer with npm-like script runner"
  homepage "https://github.com/spninad/spindle"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-macos-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-linux-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "spindle"
    bin.install_symlink bin/"spindle" => "sp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spindle --version 2>&1")
  end
end
