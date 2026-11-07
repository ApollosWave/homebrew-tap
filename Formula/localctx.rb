class Localctx < Formula
  desc "Local Apple Silicon codebase context engine for coding agents"
  homepage "https://localctx.apolloswave.com"
  url "https://localctx.apolloswave.com/downloads/localctx-4.10.0-macos-arm64.tar.gz"
  sha256 "f10b62bc37e596bdaf59a18c104ca56f4b86a3cc7d9babf4ecbe54d3e20e13ef"
  version "4.10.0"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/localctx"
  end

  test do
    system "#{bin}/localctx", "--version"
    assert_match version.to_s, shell_output("#{bin}/localctx --version")
  end
end
