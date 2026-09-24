class Mfdoit < Formula
  desc "High-efficiency personal task manager"
  homepage "https://github.com/wreckingadm/mfdoit"
  url "https://github.com/wreckingadm/homebrew-mfdoit/releases/download/mfdoit-cli-v1.18.0/mfdoit-v1.18.0-d2d9e0e-darwin-arm64.tar.gz"
  sha256 "9890d1f8dd56e5ea844371857f2767db0b26da229f1dbdaaa7d2f8dea3a404c0"
  version "1.18.0"

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
