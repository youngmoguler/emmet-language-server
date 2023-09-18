class EmmetLs < Formula
  desc "Emmet language server"
  homepage "https://github.com/youngmoguler/emmet-language-server"
  url "https://github.com/youngmoguler/emmet-language-server/archive/refs/tags/v2.0.0.tar.gz"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
