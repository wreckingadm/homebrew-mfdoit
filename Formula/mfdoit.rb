class Mfdoit < Formula
  desc "High-efficiency personal task manager"
  homepage "https://github.com/wreckingadm/mfdoit"
  version "1.23.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wreckingadm/homebrew-mfdoit/releases/download/mfdoit-cli-v1.23.1/mfdoit-v1.23.1-ac79fa0-darwin-arm64.tar.gz"
      sha256 "de069d262dbba0e2094e1c8e15bb0eb6950e53c96f8766e12fe8eabd4642d7c3"
    elsif Hardware::CPU.intel?
      url "https://github.com/wreckingadm/homebrew-mfdoit/releases/download/mfdoit-cli-v1.23.1/mfdoit-v1.23.1-ac79fa0-darwin-x64.tar.gz"
      sha256 "560c0ac78299e1ad53f8c9266ec9c190b45099af16be6d6db7783bdddb65ea12"
    end
  end

  def install
    libexec.install Dir["*"]
    mfdoit_bin = if File.exist?(libexec/"bin/mfdoit")
      libexec/"bin/mfdoit"
    else
      Dir["#{libexec}/*/bin/mfdoit"].first
    end
    bin.install_symlink mfdoit_bin
    bin.install_symlink mfdoit_bin => "mfd"
  end

  test do
    system "#{bin}/mfdoit", "--version"
    system "#{bin}/mfd", "--version"
  end
end
