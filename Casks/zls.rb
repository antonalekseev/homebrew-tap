cask 'zls' do
  desc "The Zig Language Server"
  name 'zls'
  homepage 'https://github.com/zigtools/zls'

  arch arm: "aarch64", intel: "x86_64"
  version "0.11.0"
  url "https://github.com/zigtools/zls/releases/download/#{version}/zls-#{arch}-macos.tar.gz"
  sha256 arm:  "8096da4115bfe05f174ec579812ab9580f16f0eeda4f73abbd44474ee994fd15",
         intel: "cfcd171b0d977a22cb03a40e8913ae4890da296ed085aa0b81f76832062a66f2"

  binary "bin/zls", target: 'zls'
end
