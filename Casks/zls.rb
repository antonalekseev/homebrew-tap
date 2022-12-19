cask 'zls' do
  desc "The Zig Language Server"
  name 'zls'
  homepage 'https://github.com/zigtools/zls'

  arch arm: "aarch64", intel: "x86_64"
  version "0.10.0"
  url "https://github.com/zigtools/zls/releases/download/#{version}/#{arch}-macos.tar.zst"
  sha256 arm:  "a3526620670bf58c51787751d0eabb0e1d794b28f0939c2e2d98de1b2b4a75fe",
         intel: "55691a2d75e7d3fae9375d8683f46be7469cbf192b4dea75200c753406cb3553"

  depends_on formula: "zstd"

  binary "bin/zls", target: 'zls'
end
