require "formula"

class Rclone < Formula
  homepage "http://rclone.org/"
  url "http://downloads.rclone.org/rclone-v1.28-osx-amd64.zip"
  sha256 "e8c878ae7e4c36145b6c848b0973baa8da59152195b0670142b4471f5f2614a9"
  version "1.28"

  def install
    bin.install "rclone"
  end
end
