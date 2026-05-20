class Floom < Formula
  desc "One shared skill library, synced across every AI agent (Claude, Codex, Cursor, Gemini)"
  homepage "https://floom.dev"
  url "https://registry.npmjs.org/@floomhq/floom/-/floom-2.0.4.tgz"
  sha256 "b7c5c0a530e7c07c4b546e4b3c7574bf9ab1386c5f187bd387dde97f9b65fe4f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/floom"
  end

  test do
    output = shell_output("#{bin}/floom --version")
    assert_match "2.0.4", output
  end
end
