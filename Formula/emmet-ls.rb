class EmmetLs < Formula
  desc "Emmet language server"
  homepage "https://github.com/youngmoguler/emmet-language-server"
  url "https://github.com/youngmoguler/emmet-language-server/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "58a77cf0a7a5459876d797f401a7ffecb35a1fb9aaaa794e09c00d9abf9b7fd9"

  depends_on "node" => :build

  def install
    system "npm", "install", "-g", "@olrtg/emmet-language-server"
    bin.install_symlink "#{HOMEBREW_PREFIX}/bin/emmet-ls" => "emmet-ls"
  end

  test do
    system "#{bin}/emmet-ls", "--version"
  end
end
