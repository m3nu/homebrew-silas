require "formula"

class Rclone < Formula
  homepage "http://rclone.org/"
  url "http://downloads.rclone.org/rclone-v1.27-osx-amd64.zip"
  sha256 "7de9e938496ce4eed5046de864152c3da05e6d11a154a2d6ded4e6ddedc00b2a"
  version "1.27"

  def install
    bin.install "rclone"
  end
end
