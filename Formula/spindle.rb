class Spindle < Formula
  desc "CLI tool for installing reusable source-code components and running project scripts"
  homepage "https://github.com/spninad/spindle"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_ARM64"
    end

    on_intel do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_X86_64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X86_64"
    end
  end

  def install
    bin.install "spindle"
    # Install the `sp` short alias
    bin.install_symlink bin/"spindle" => "sp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spindle --version 2>&1")
  end
end
