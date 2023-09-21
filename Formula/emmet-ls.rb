class EmmetLs < Formula
  desc "Emmet language server"
  homepage "https://github.com/youngmoguler/emmet-language-server"
  url "https://github.com/youngmoguler/emmet-language-server/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "58a77cf0a7a5459876d797f401a7ffecb35a1fb9aaaa794e09c00d9abf9b7fd9"

  depends_on "node" => :build

  def install
    ENV.prepend_path "PATH", "#{Formula["node"].opt_bin}"

    # Install the node modules to libexec
    system "npm", "install", "--prefix", libexec
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end

