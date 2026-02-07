class Terminalmarket < Formula
  desc "TerminalMarket CLI — a curated marketplace for developers & founders"
  homepage "https://terminalmarket.app"
  url "https://github.com/infoindustry/terminalmarket-cli/archive/refs/tags/v0.10.6.tar.gz"
  sha256 "64b9cf33cf7bc0cbb7f00644a920e04a792920d1ab58440c79e60a03fe6af1a5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: false)
    bin.install_symlink libexec/"bin/tm"
  end

  test do
  output = shell_output("#{bin}/tm doctor 2>&1", 1)
  assert_match(/API unreachable/i, output)
end

end


