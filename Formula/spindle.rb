class Spindle < Formula
  desc "CLI tool for installing reusable source-code components and running project scripts"
  homepage "https://github.com/spninad/spindle"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-macos-arm64.tar.gz"
      sha256 "1cce5fcba07a05f41dd27303dca4bd43aa7671d8a13b42e47d4a4b4f2c604efd"
    end

    on_intel do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-macos-x86_64.tar.gz"
      sha256 "7a51c756b0507d916d37219bf3b1b146893b9a95206c265183e526ae24501ac2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/spninad/spindle/releases/download/v#{version}/spindle-#{version}-linux-x86_64.tar.gz"
      sha256 "01ba2aa1ec2614271e814c1b9e56725b34df5ce1e0dafddd374c9eba81ce7196"
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
