class Prismtrace < Formula
  desc "Local AI observability tool for macOS"
  homepage "https://github.com/chhuax/PrismTrace"
  url "https://github.com/chhuax/PrismTrace/releases/download/v0.1.0-alpha.1/prismtrace-0.1.0-alpha.1-aarch64-apple-darwin.tar.gz"
  sha256 "a9baab677ce9320fd161e2fff28020fbc2c06677c0d556839277831315cb3351"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "bin/prismtrace"
  end

  test do
    assert_match "PrismTrace host skeleton", shell_output(bin/"prismtrace")
  end
end
