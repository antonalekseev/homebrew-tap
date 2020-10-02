class Gokey < Formula
  desc "A simple vaultless password manager in Go"
  homepage "https://github.com/cloudflare/gokey"
  head "https://github.com/cloudflare/gokey.git"

  depends_on "go" => :build

  def install
    ENV["GOBIN"] = bin
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/cloudflare/gokey").install buildpath.children

    cd "src/github.com/cloudflare/gokey/cmd/gokey" do
      system "go", "build"
      bin.install "gokey"
    end
  end

  test do
    (testpath/"master").write "foo"
    assert_equal "caLKiMC2;9", shell_output("#{bin}/gokey -P #{testpath}/master -r 'bar'", 0)
  end

end
