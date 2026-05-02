class Prismtrace < Formula
  desc "Local AI observability tool for macOS"
  homepage "https://github.com/chhuax/PrismTrace"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/chhuax/PrismTrace/releases/download/v0.1.0-alpha.3/prismtrace-0.1.0-alpha.3-aarch64-apple-darwin.tar.gz"
    sha256 "0967c33a7518facb7570d1758988f48e718e321b19415d838058b1e16e334249"
  else
    url "https://github.com/chhuax/PrismTrace/releases/download/v0.1.0-alpha.3/prismtrace-0.1.0-alpha.3-x86_64-apple-darwin.tar.gz"
    sha256 "b94876637fe422af16f6f1176c44e7096dea18685f6cc9c83398ae1681e48a39"
  end

  def install
    bin.install "bin/prismtrace"
  end

  test do
    assert_match "PrismTrace host skeleton", shell_output(bin/"prismtrace")
  end
end
