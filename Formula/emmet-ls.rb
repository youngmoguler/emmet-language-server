require "language/node"

class EmmetLs < Formula
  desc "Emmet Language Server"
  homepage "https://github.com/youngmoguler/emmet-language-server"
  url "https://github.com/youngmoguler/emmet-language-server/archive/refs/tags/v2.0.5.tar.gz"
  sha256 "73410a87122cd72ddc374295097b94becf6211201fdf135af1dd257afe64966f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/emmet-ls", "--version"
  end
end
