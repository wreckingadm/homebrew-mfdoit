class Mfdoit < Formula
  desc "High-efficiency personal task manager"
  homepage "https://github.com/wreckingadm/mfdoit"
  url "https://github.com/wreckingadm/homebrew-mfdoit/releases/download/mfdoit-cli-v1.11.1/mfdoit-v1.11.1-0935367-darwin-arm64.tar.gz"
  sha256 "2be5bce481eebf10639d46161c643522591c8cca2b7adc0d51287397083ef007"
  version "1.11.1"

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
