class Zdns < Formula
  desc "Fast DNS Lookup Library and CLI Tool "
  homepage "https://github.com/zmap/zdns"
  url "https://github.com/zmap/zdns/archive/refs/tags/v2.0.5.tar.gz"
  sha256 "9c0bf43b892a3e65df15bb7b1c41264eea2255ee272d933127a1ed89c5f2de13"
  license "Apache-2.0"
  head "https://github.com/zmap/zdns.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    # They forgot to bump the version in
    # https://github.com/zmap/zdns/blob/main/src/zdns/version.go
    # assert_match version.to_s, shell_output("#{bin}/zdns --version")
    assert_match "2.0.4", shell_output("#{bin}/zdns --version")
  end
end
