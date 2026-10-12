class Simem < Formula
  desc "Local project memory for AI coding agents, with fewer tokens per session"
  homepage "https://github.com/thinhledev/simem"
  url "https://registry.npmjs.org/@simem/cli/-/cli-2.0.3.tgz"
  sha256 "b99c227664b78e3733ffb21308327ba683c8c3f76463ead68a5922e32d52fe83"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    # Run with Homebrew's Node.js even when an older one comes first on PATH.
    (bin/"simem").write_env_script libexec/"bin/simem", PATH: "#{formula_opt_bin("node")}:$PATH"
  end

  def caveats
    <<~EOS
      Connect simem to your coding agents (once per machine):
        simem init
      Then restart the Claude Code and Codex apps.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/simem --version")
  end
end
