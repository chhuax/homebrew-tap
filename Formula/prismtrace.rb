class Prismtrace < Formula
  desc "Local AI observability tool for macOS"
  homepage "https://github.com/chhuax/PrismTrace"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/chhuax/PrismTrace/releases/download/v0.1.0-alpha.4/prismtrace-0.1.0-alpha.4-aarch64-apple-darwin.tar.gz"
    sha256 "123b488d3c010d2bc45b13b479cca320d06459e6637fd4f2c8f7243beac7978e"
  else
    url "https://github.com/chhuax/PrismTrace/releases/download/v0.1.0-alpha.4/prismtrace-0.1.0-alpha.4-x86_64-apple-darwin.tar.gz"
    sha256 "fd93c9a85f251e2983c0f0e9b3c90025401c28897ee99b4f1f4737f1c1f6c794"
  end

  def install
    bin.install "bin/prismtrace"
  end

  test do
    assert_match "PrismTrace host skeleton", shell_output(bin/"prismtrace")
  end
end
