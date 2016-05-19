require "formula"

class Rclone < Formula
  homepage "http://rclone.org/"
  url "http://downloads.rclone.org/rclone-v1.29-osx-amd64.zip"
  sha256 "64c95564ae69f5238000c6adb2f4d178923176ecfd9d64cddfd80bfa538e1c15"
  version "1.29"

  def install
    bin.install "rclone"
  end
end
