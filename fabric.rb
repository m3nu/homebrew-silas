require "formula"

class Fabric < Formula
  homepage "http://www.fabfile.org/"
  url "https://pypi.python.org/packages/source/F/Fabric/Fabric-1.10.1.tar.gz"
  sha256 "ab9c54e9496c89ae96ed4aa669e01c792376d75a7389ec90d4292282cc26f008"

  depends_on :python if MacOS.version <= :snow_leopard

  resource "paramiko" do
    url "https://pypi.python.org/packages/source/p/paramiko/paramiko-1.15.2.tar.gz"
    sha256 "4f56a671a3eecbb76e6143e6e4ca007d503a39aa79aa9e14ade667fa53fd6e55"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec + "lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", prefix + "lib/python2.7/site-packages"

    install_args = "setup.py", "install", "--prefix=#{libexec}"
    resource("paramiko").stage { system "python", *install_args }

    system "python", "setup.py", "install", "--prefix=#{libexec}"

    (bin/"fab").write_env_script libexec/"bin/fab", :PYTHONPATH => ENV["PYTHONPATH"]
  end

  test do
    system "#{bin}/fab", "--version"
  end
end
