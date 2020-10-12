class Dockfmt < Formula
  desc "Dockerfile format"
  homepage "https://github.com/jessfraz/dockfmt"
  url "https://github.com/jessfraz/dockfmt/archive/v0.3.3.tar.gz"
  sha256 "99988f60dab684ae578b0f842eaa48c03c1dd11cf7e8312eaa4b28fbfc8aaf2d"
  head "https://github.com/jessfraz/dockfmt.git"

  depends_on "go" => :build

  def install
    system "go", "build"
    bin.install "dockfmt"
  end

  test do
    assert_match "darwin", shell_output("#{bin}/dockfmt version", 0)
  end

end
