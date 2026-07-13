class Mfdoit < Formula
  desc "High-efficiency personal task manager"
  homepage "https://github.com/wreckingadm/mfdoit"
  url "https://github.com/wreckingadm/homebrew-mfdoit/releases/download/mfdoit-cli-v1.6.4/mfdoit-v1.6.4-81613e8-darwin-arm64.tar.gz"
  sha256 "0b2488f98fd899f9e075af8410e4ad24fa620477e6e6e4f64bde4a2dbc96bd24"
  version "1.6.4"

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
