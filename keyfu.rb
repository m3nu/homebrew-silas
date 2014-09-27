require 'formula'

class Keyfu < Formula
  homepage 'http://www.keyfu.com'
  url 'https://github.com/silas/keyfu/releases/download/0.1.0/keyfu_darwin_amd64.zip'
  sha256 '81b796d1a560a919138a45bd60a5d2d0f7f1f24ce8bb54e20681ddd61cd9e126'
  version '0.1.0'

  depends_on :arch => :x86_64

  def install
    bin.install 'keyfu_darwin_amd64' => 'keyfu'
  end
end
