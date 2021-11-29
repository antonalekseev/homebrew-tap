cask 'terraform-lsp' do
  version '0.0.12'
  sha256 'd42957a9a50ac8f527adfa341d1b7fbd94ab5ce133adec9983cf3d02d982397b'
  url "https://github.com/juliosueiras/terraform-lsp/releases/download/v#{version}/terraform-lsp_#{version}_darwin_amd64.tar.gz"
  name 'terraform-lsp'
  homepage 'https://github.com/juliosueiras/terraform-lsp'
  binary 'terraform-lsp'
end
