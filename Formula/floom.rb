class Floom < Formula
  desc "One shared skill library, synced across every AI agent (Claude, Codex, Cursor, Gemini)"
  homepage "https://floom.dev"
  url "https://registry.npmjs.org/@floomhq/floom/-/floom-3.0.3.tgz"
  sha256 "5c8e9c5fcd1bf82cadfa76b20f26ee5182366102e7480a16efce7e5fec11d776"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/floom"
  end

  test do
    output = shell_output("#{bin}/floom --version")
    assert_match "3.0.3", output
  end
end
