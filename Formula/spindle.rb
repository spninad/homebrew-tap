class Spindle < Formula
  desc "Source-code component installer with npm-like script runner"
  homepage "https://github.com/spninad/spindle"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-macos-arm64.tar.gz"
      sha256 "164905f565ffdbf32d78ac358578f79183145cab68d138dc8ac4f198f3872dc8"
    end

    on_intel do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-macos-x86_64.tar.gz"
      sha256 "fe113d64a2c0e4fda3a865cfc2f113c300e9bd2e851f2b35142add3c6b431f87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-linux-x86_64.tar.gz"
      sha256 "feb5dc9e96d56159a72529e5a8e8d964fad57df38f57b4f0831eecf596a2a9ed"
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
