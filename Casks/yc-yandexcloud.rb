cask 'yc-yandexcloud' do
  version '0.66.0'
  sha256 '089835667fdec131ea4ff0be4f03f6ae90c90ab6511fc96d6d4c3808d4580366'

  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  binary 'yc'

end
