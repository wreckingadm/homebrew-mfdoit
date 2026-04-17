class Mfdoit < Formula
  desc "High-efficiency personal task manager"
  homepage "https://github.com/wreckingadm/doit"
  url "https://github.com/wreckingadm/homebrew-doit/releases/download/doit-cli-v1.2.0/mfdoit-v1.2.0-befc306-darwin-arm64.tar.gz"
  sha256 "fb67a05335b9851d9d3a8dd68821c9327b94432cde3756b7858fd3448350e7de"
  version "1.2.0"

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
