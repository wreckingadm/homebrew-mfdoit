class Mfdoit < Formula
  desc "High-efficiency personal task manager"
  homepage "https://github.com/wreckingadm/mfdoit"
  url "https://github.com/wreckingadm/homebrew-mfdoit/releases/download/mfdoit-cli-v1.3.0/mfdoit-v1.3.0-c2d07e8-darwin-arm64.tar.gz"
  sha256 "1d9fc627ad297aae17848fc0b2569f173796664cbc569bd15d54d14cf6dfd7e1"
  version "1.3.0"

  def install
    libexec.install Dir["*"]
    # Oclif tarballs often have a single top-level directory named after the app
    # We try to symlink from the expected bin path
    if File.exist?(libexec/"bin/mfdoit")
      bin.install_symlink libexec/"bin/mfdoit"
    else
      # If it's nested (e.g. libexec/mfdoit/bin/mfdoit)
      bin.install_symlink Dir["#{libexec}/*/bin/mfdoit"].first
    end
  end

  test do
    system "#{bin}/mfdoit", "--version"
  end
end
