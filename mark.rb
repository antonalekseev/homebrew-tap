class Mark < Formula
  desc "The solution for syncing your Markdown docs with Atlassian Confluence."
  version "3.1"
  homepage "https://github.com/kovetskiy/mark"
  url "https://github.com/kovetskiy/mark/archive/#{version}.tar.gz"
  sha256 "e476a33716faf9df259638a77f62c098a3932f7f1565f72054efaef36d797095"
  head "https://github.com/kovetskiy/mark.git"

  depends_on "go" => :build

  def install
    system "go", "build"
    bin.install "mark"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/mark -v", 0)
  end

end
