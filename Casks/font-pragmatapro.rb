cask "font-pragmatapro" do
  version "0.903"
  # Per-purchase archive (filename has a random suffix), so no public hash can be pinned.
  sha256 :no_check

  # Usage: HOMEBREW_PRAGMATAPRO_ZIP=~/Downloads/PragmataPro-xxxx.zip brew install --cask font-pragmatapro
  # The fallback keeps `brew info`/`outdated`/etc. working when the variable is unset;
  # the download then fails and the URL in the error shows what is missing.
  zip = File.expand_path(ENV.fetch("HOMEBREW_PRAGMATAPRO_ZIP", "/HOMEBREW_PRAGMATAPRO_ZIP-is-not-set.zip"))
  url "file://#{URI::DEFAULT_PARSER.escape(zip)}"

  name "PragmataPro"
  desc "Condensed monospaced font designed for programmers"
  homepage "https://fsd.it/shop/fonts/pragmatapro/"

  v = version.no_dots # "0903"
  dir = "PragmataPro#{version}"

  # 4 styles x {plain, liga} x {proportional-symbols, Mono} = 16 TTFs
  %w[R B I Z].each do |s|
    font "#{dir}/PragmataPro#{s}_#{v}.ttf"
    font "#{dir}/PragmataPro#{s}_liga_#{v}.ttf"
    font "#{dir}/PragmataPro_Mono_#{s}_#{v}.ttf"
    font "#{dir}/PragmataPro_Mono_#{s}_liga_#{v}.ttf"
  end

  #+begin_src ruby
  zap trash: [
    "~/Library/Fonts/*[Pp]ragmata[Pp]ro*",
    "/Library/Fonts/*[Pp]ragmata[Pp]ro*",
  ]
  #+end_src

end
