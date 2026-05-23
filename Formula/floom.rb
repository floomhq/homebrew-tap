class Floom < Formula
  desc "One shared skill library, synced across every AI agent (Claude, Codex, Cursor, Gemini)"
  homepage "https://floom.dev"
  url "https://registry.npmjs.org/@floomhq/floom/-/floom-3.0.0.tgz"
  sha256 "0a2a115ade87695db6cbbe995503fa229f8ef98caa2fe69d73b90819fdc20cf4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/floom"
  end

  test do
    output = shell_output("#{bin}/floom --version")
    assert_match "3.0.0", output
  end
end
