class Gofakeit < Formula
  desc "Random data generator written in Go"
  homepage "https://github.com/brianvoe/gofakeit"
  head "https://github.com/brianvoe/gofakeit.git"

  depends_on "go" => :build

  def install
    ENV["GOBIN"] = bin
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/brianvoe/gofakeit").install buildpath.children

    cd "src/github.com/brianvoe/gofakeit/cmd/gofakeit" do
      system "go", "build"
      bin.install "gofakeit"
    end
  end

  test do
    assert_match "Could not find function to run", shell_output("#{bin}/gofakeit", 0)
  end

end
