cask 'yc-yandexcloud' do
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.ru/docs/cli/'

  on_intel do
    version "0.94.0"
    sha256 "573bd61fd0733feb26b686e8589effbfe45ebcf7046bd1b5d939cfd0393e3fde"
    url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  end

  on_arm do
    version "0.94.0"
    sha256 "573bd61fd0733feb26b686e8589effbfe45ebcf7046bd1b5d939cfd0393e3fde"
    url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/arm64/yc"
  end

  binary 'yc'
end
