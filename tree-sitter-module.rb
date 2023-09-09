class TreeSitterModule < Formula
  desc "A bundle of tree-sitter language definitions"
  homepage "https://github.com/casouri/tree-sitter-module"
  head "https://github.com/antonalekseev/tree-sitter-module.git", branch: "local"

  depends_on "bash"

  def install
    system "bash", "./batch.sh"
    lib.install Dir["dist/*.dylib"]
  end
end
