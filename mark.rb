class Mark < Formula
  desc "The solution for syncing your Markdown docs with Atlassian Confluence."
  version "5.2.2"
  homepage "https://github.com/kovetskiy/mark"
  url "https://github.com/kovetskiy/mark/archive/#{version}.tar.gz"
  sha256 "993c0496375568d32363184cab3f90c0850ead9bf5caf222496e1d8db7024308"
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
