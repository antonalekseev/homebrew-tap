cask 'yc-yandexcloud' do
  version '0.74.0'
  sha256 'f960c1bd0ef601382e79a852a4440a85b6401b8505b27686ced916f0a7eb20c7'

  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  binary 'yc'

end
