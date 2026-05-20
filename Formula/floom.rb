class Floom < Formula
  desc "One shared skill library, synced across every AI agent (Claude, Codex, Cursor, Gemini)"
  homepage "https://floom.dev"
  url "https://registry.npmjs.org/@floomhq/floom/-/floom-2.0.3.tgz"
  sha256 "ac23b75b79c1624af61ed0c3ae1a1c65471ef50ecb0d64b3b6614a8b8beeb03a"
  license "MIT"

  bottle :unneeded

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/floom"
  end

  test do
    output = shell_output("#{bin}/floom --version")
    assert_match "2.0.3", output
  end
end
