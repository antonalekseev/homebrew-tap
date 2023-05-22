cask 'yc-yandexcloud' do
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  on_intel do
    version "0.104.0"
    sha256 "ede45fa4e8f92757ee374a40f3fc93c485c891579b89c092680982c1f03dbf81"
    url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  end

  on_arm do
    version "0.104.0"
    sha256 "5c0294deb912b80a1b8fa8040d6b8cab45936930f40cdb7a5c8707c505e16b70"
    url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/arm64/yc"
  end

  binary 'yc'
end
