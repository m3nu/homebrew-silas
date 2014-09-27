require 'formula'

class Keyfu < Formula
  homepage 'http://www.keyfu.com'
  url 'https://github.com/silas/keyfu/releases/download/0.2.0/keyfu_darwin_amd64.zip'
  sha256 'f67e1097ae2e5b5b46ef1db61a071d387ba7aa229f51e10dc2f4510b895dde3b'
  version '0.2.0'

  depends_on :arch => :x86_64

  def install
    bin.install 'keyfu'
  end
end
