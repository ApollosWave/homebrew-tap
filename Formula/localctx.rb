class Localctx < Formula
  desc "Local Apple Silicon codebase context engine for coding agents"
  homepage "https://localctx.apolloswave.com"
  url "https://github.com/ApollosWave/localctx/releases/download/v4.11.9/localctx-4.11.9-macos-arm64.tar.gz"
  version "4.11.9"
  sha256 "72217350a1bb843e4762d9fdc030e40f37b666b46c08b76f7569ede9d123e251"

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
