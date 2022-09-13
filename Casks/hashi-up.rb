cask 'hashi-up' do
  desc "A lightweight utility to install HashiCorp Consul, Nomad or Vault on any remote Linux host."
  name 'hashi-up'
  homepage 'https://github.com/jsiebens/hashi-up'

  on_intel do
    version "0.16.0"
    sha256 "4487c361493362c8f19fecb80097695ab6e1303c74f290aba8f66c55d1eeb726"
    url "https://github.com/jsiebens/hashi-up/releases/download/v#{version}/hashi-up-darwin"
  end

  on_arm do
    version "0.16.0"
    sha256 "4487c361493362c8f19fecb80097695ab6e1303c74f290aba8f66c55d1eeb726"
    url "https://github.com/jsiebens/hashi-up/releases/download/v#{version}/hashi-up-darwin"
  end

  on_intel do
    binary "hashi-up-darwin", target: 'hashi-up'
  end

  on_arm do
    binary "hashi-up-darwin", target: 'hashi-up'
  end
end
