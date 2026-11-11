class Localctx < Formula
  desc "Local Apple Silicon codebase context engine for coding agents"
  homepage "https://localctx.apolloswave.com"
  url "https://github.com/ApollosWave/localctx/releases/download/v4.11.8/localctx-4.11.8-macos-arm64.tar.gz"
  version "4.11.8"
  sha256 "26e99f3721cefc5f63808967f5aee685a0cf4869836b1c7a417156bbc58e740a"

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
