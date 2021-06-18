cask 'goben' do
  version '0.5'
  sha256 '7bf37cf61c4ffaa06a8cb2f6a6388d1f1d6f8a69eca110c783da6020ada3cab1'
  url "https://github.com/udhos/goben/releases/download/v#{version}/goben_darwin_amd64"
  name 'goben'
  homepage 'https://github.com/udhos/goben'

  binary 'goben_darwin_amd64', target: 'goben'
end
