cask 'yc-yandexcloud' do
  version '0.91.0'
  sha256 '0a2ad2fd602783eeff80256a7f3afce90ccc0d46504a947f16526b00dddfa83b'

  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  binary 'yc'

end
