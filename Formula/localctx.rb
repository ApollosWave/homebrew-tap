class Localctx < Formula
  desc "Local Apple Silicon codebase context engine for coding agents"
  homepage "https://localctx.apolloswave.com"
  url "https://github.com/ApollosWave/localctx/releases/download/v4.11.2/localctx-4.11.2-macos-arm64.tar.gz"
  version "4.11.2"
  sha256 "d7f4c7d30a87b9db3970d78dfef8f31762495e3a364482fa891ffd0252853752"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/localctx"
  end

  test do
    system bin/"localctx", "--version"
    assert_match version.to_s, shell_output("#{bin}/localctx --version")
  end
end
