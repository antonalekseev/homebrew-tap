cask 'yc-yandexcloud' do
  version '0.77.0'
  sha256 'f7777793510ab08e6a9f3f0096a5673f28da4cf493c3299721fd5bd6fb704e8a'

  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  binary 'yc'

end
