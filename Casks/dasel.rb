cask 'dasel' do
  version 'v1.0.4'
  sha256 '8a278b11a732730c89f8f503384f302679a6de724635d0392cef52935fa67157'

  url "https://github.com/TomWright/dasel/releases/download/#{version}/dasel_macos_amd64"
  name 'dasel'
  homepage 'https://github.com/TomWright/dasel'

  binary 'dasel_macos_amd64', target: 'dasel'

end
