class Floom < Formula
  desc "One shared skill library, synced across every AI agent (Claude, Codex, Cursor, Gemini)"
  homepage "https://floom.dev"
  url "https://registry.npmjs.org/@floomhq/floom/-/floom-3.0.2.tgz"
  sha256 "7bddc25456d157179ddf542423c5bca2120438061ef017dd63513b19de16f04c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/floom"
  end

  test do
    output = shell_output("#{bin}/floom --version")
    assert_match "3.0.2", output
  end
end
