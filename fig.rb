require "formula"

class Fig < Formula
  homepage "http://www.fig.sh"
  url "https://github.com/docker/fig/releases/download/0.5.2/darwin"
  sha256 "2ec2b2b33d66924b0eb645b5aa4363e12093e2a15754edf2359ca467b8b27e21"

  def install
    bin.install "darwin" => "fig"
  end
end
