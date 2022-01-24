cask "just" do
  desc "just is a handy way to save and run project-specific commands."
  version "0.10.5"
  homepage "https://github.com/casey/just"
  url "https://github.com/casey/just/releases/download/#{version}/just-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "8802f2591734472048d02125215dcebbe6cd2c68e04ee2d791f45b189a24803b"

  binary "just"
  manpage "just.1"
end
