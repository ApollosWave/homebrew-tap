class Localctx < Formula
  desc "Local Apple Silicon codebase context engine for coding agents"
  homepage "https://localctx.apolloswave.com"
  url "https://github.com/ApollosWave/localctx/releases/download/v4.11.4/localctx-4.11.4-macos-arm64.tar.gz"
  version "4.11.4"
  sha256 "87d37341ce654a6a9c8fa240cbf64aec412573ba4cb7d0e52ffaacdd405fafe8"

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
