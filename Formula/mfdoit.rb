class Mfdoit < Formula
  desc "High-efficiency personal task manager"
  homepage "https://github.com/wreckingadm/mfdoit"
  url "https://github.com/wreckingadm/homebrew-mfdoit/releases/download/mfdoit-cli-v1.7.0/mfdoit-v1.7.0-5e86dc6-darwin-arm64.tar.gz"
  sha256 "44918a61be037c859d74a85ad46e131731da1a65addcb49db930ee0374f85e36"
  version "1.7.0"

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
