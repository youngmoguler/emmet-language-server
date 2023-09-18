class EmmetLs < Formula
  desc "Emmet language server"
  homepage "https://github.com/youngmoguler/emmet-language-server"
  url "https://github.com/youngmoguler/emmet-language-server/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "3c34cf0df0ee3066eade072f78d31cc82560e7f0e636f54bd11a8d617d6b0176"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
