require "formula"

class Gdrive < Formula
  homepage "https://github.com/prasmussen/gdrive"
  url "https://drive.google.com/uc?id=0B3X9GlR6EmbnOWZNdHFaT0trTHc"
  sha256 "2995ddcf1fe442b5f245487a3e079b135a5b4f41cb96b771a9e3d2f179477ef0"
  version "1.3.0"

  def install
    bin.install "uc" => "gdrive"
  end
end
