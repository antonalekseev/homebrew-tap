cask 'zls' do
  desc "The Zig Language Server"
  name 'zls'
  homepage 'https://github.com/zigtools/zls'

  arch arm: "aarch64", intel: "x86_64"
  version "0.13.0"
  url "https://github.com/zigtools/zls/releases/download/#{version}/zls-#{arch}-macos.tar.xz"
  sha256 arm:  "9848514524f5e5d33997ac280b7d92388407209d4b8d4be3866dc3cf30ca6ca8",
         intel: "4b63854d6b76810abd2563706e7d768efc7111e44dd8b371d49198e627697a13"

  binary "bin/zls", target: 'zls'
end
