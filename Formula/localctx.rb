class Localctx < Formula
  desc "Local Apple Silicon codebase context engine for coding agents"
  homepage "https://localctx.apolloswave.com"
  url "https://github.com/ApollosWave/localctx/releases/download/v4.11.3/localctx-4.11.3-macos-arm64.tar.gz"
  version "4.11.3"
  sha256 "0ca36d5ee5963f0201f82971409ffae373fc93f669a056549eab6924bf3eb55c"

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
