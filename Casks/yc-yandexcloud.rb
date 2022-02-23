cask 'yc-yandexcloud' do
  version '0.87.0'
  sha256 'b120e1398cca55eeb8b601a17f929114394af0a73c6bb86cfa16dda42029cac9'

  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  binary 'yc'

end
