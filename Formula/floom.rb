class Floom < Formula
  desc "One shared skill library, synced across every AI agent (Claude, Codex, Cursor, Gemini)"
  homepage "https://floom.dev"
  url "https://registry.npmjs.org/@floomhq/floom/-/floom-3.0.1.tgz"
  sha256 "6382c592b2a3c50cb97a60d4953497ccd7f5b9c08005cb7a2e12d6b7ee648e76"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/floom"
  end

  test do
    output = shell_output("#{bin}/floom --version")
    assert_match "3.0.1", output
  end
end
