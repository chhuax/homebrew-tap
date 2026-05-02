class Prismtrace < Formula
  desc "Local AI observability tool for macOS"
  homepage "https://github.com/chhuax/PrismTrace"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/chhuax/PrismTrace/releases/download/v0.1.0-alpha.2/prismtrace-0.1.0-alpha.2-aarch64-apple-darwin.tar.gz"
    sha256 "782b9543293462fac77b6b7833960dfe2d6b66da2f63da3427372acceedba118"
  else
    url "https://github.com/chhuax/PrismTrace/releases/download/v0.1.0-alpha.2/prismtrace-0.1.0-alpha.2-x86_64-apple-darwin.tar.gz"
    sha256 "c6c137662d4d185cfa80cab312f62c4af9d05eb1cb1ed755f620c2bf189e8cc7"
  end

  def install
    bin.install "bin/prismtrace"
  end

  test do
    assert_match "PrismTrace host skeleton", shell_output(bin/"prismtrace")
  end
end
