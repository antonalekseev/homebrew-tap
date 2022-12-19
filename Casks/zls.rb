cask 'zls' do
  desc "The Zig Language Server"
  name 'zls'
  homepage 'https://github.com/zigtools/zls'

  on_intel do
    version "0.10.0"
    sha256 "55691a2d75e7d3fae9375d8683f46be7469cbf192b4dea75200c753406cb3553"
    url "https://github.com/zigtools/zls/releases/download/#{version}/x86_64-macos.tar.zst"
  end

  on_arm do
    version "0.10.0"
    sha256 "a3526620670bf58c51787751d0eabb0e1d794b28f0939c2e2d98de1b2b4a75fe"
    url "https://github.com/zigtools/zls/releases/download/#{version}/aarch64-macos.tar.zst"
  end

  binary "bin/zls", target: 'zls'
end
