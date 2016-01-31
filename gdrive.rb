require "formula"

class Gdrive < Formula
  homepage "https://github.com/prasmussen/gdrive"
  url "https://drive.google.com/uc?id=0B3X9GlR6EmbnVjIzMDRqck1aekE"
  sha256 "b9b75776d131e1e0e61e012cdae3f67b892a4a39a5f828719f359fe16e99049b"
  version "1.9.0"

  def install
    bin.install "uc" => "drive"
  end
end
