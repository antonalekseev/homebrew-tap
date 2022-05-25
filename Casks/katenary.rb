cask 'katenary' do
  version '2.0.0-beta2'
  sha256 '5821f6bdc176dae5a8d6fee6bc70e0fc26c4935239f653968ed47b01c69dcf35'
  url "https://github.com/metal3d/katenary/releases/download/#{version}/katenary-darwin-amd64"
  name 'katenary'
  homepage 'https://github.com/metal3d/katenary'

  binary 'katenary-darwin-amd64', target: 'katenary'
end
