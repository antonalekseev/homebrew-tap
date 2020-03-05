cask 'yc-yandexcloud' do
  version '0.52.1'
  sha256 '1d05a31914c9154e0250412d4c99804d01aac406f7001216f043b83eda141830'

  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  binary 'yc'

end
