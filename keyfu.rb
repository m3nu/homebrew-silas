require "formula"

class Keyfu < Formula
  homepage "http://www.keyfu.com"
  url "https://github.com/silas/keyfu/releases/download/0.3.0/keyfu_darwin_amd64.zip"
  sha256 "2d5cc33a5e98204f3059271c00b1d1f73e6ad1d2ed4758d53dc0742f3e9157d3"
  version "0.3.0"

  depends_on :arch => :x86_64

  def install
    bin.install "keyfu"
  end
end
