cask 'packet-cli' do
  version '0.0.5'
  sha256 '0b1dd5048bac5942d6cd74f09abb03ddde07f0df7614bc662ba707da0a3665ca'

  url "https://github.com/packethost/packet-cli/releases/download/#{version}/packet-darwin-amd64"
  appcast 'https://github.com/packethost/packet-cli/releases.atom'
  name 'Packet CLI'
  homepage 'https://github.com/packethost/packet-cli'

  binary 'packet-darwin-amd64', target: 'packet'
end
