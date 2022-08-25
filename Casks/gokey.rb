cask 'gokey' do
  desc "A simple vaultless password manager in Go"
  name 'gokey'
  homepage 'https://github.com/cloudflare/gokey/'

  on_intel do
    version "0.1.1"
    sha256 "be142ea665a270f438d7676a5bc0143fd86c21d230066bbb156adb54cc187b11"
    url "https://github.com/cloudflare/gokey/releases/download/v#{version}/gokey-v#{version}-darwin-amd64"
  end

  on_arm do
    version "0.1.1"
    sha256 "e0bd9fd06066166ba73e98733d8bb325ba74bd022aae4462d6e1448cb753c9c7"
    url "https://github.com/cloudflare/gokey/releases/download/v#{version}/gokey-v#{version}-darwin-arm64"
  end

  on_intel do
    binary "gokey-v#{version}-darwin-amd64", target: 'gokey'
  end

  on_arm do
    binary "gokey-v#{version}-darwin-arm64", target: 'gokey'
  end
end
