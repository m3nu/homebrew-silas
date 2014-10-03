require 'formula'

class Dot < Formula
  homepage 'https://github.com/silas/dot'
  url 'https://raw.githubusercontent.com/silas/dot/v0.1.0/dot'
  sha256 'ae3a8fe487d2333a05ce688c0a42262c9574454a76caab82e98d1ebe2e43b867'
  version '0.1.0'

  def install
    bin.install 'dot'
  end
end
