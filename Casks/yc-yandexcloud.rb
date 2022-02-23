cask 'yc-yandexcloud' do
  version '0.87.0'
  sha256 '7d338c350cf066181c888c372b48beb45e7be0844e5cf7ce809ee562bd9638d5'

  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  binary 'yc'

end
