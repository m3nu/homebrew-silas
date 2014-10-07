require "formula"

class Fabric < Formula
  homepage "http://www.fabfile.org/"
  url "https://pypi.python.org/packages/source/F/Fabric/Fabric-1.10.0.tar.gz"
  sha256 "edb2702b4655600f0a49a97e654c79f5b21490ce30f77d1313dd851f0b60335a"

  depends_on :python if MacOS.version <= :snow_leopard

  resource "paramiko" do
    url "https://pypi.python.org/packages/source/p/paramiko/paramiko-1.15.1.tar.gz"
    sha256 "6ed97e2281bb48728692cdc621f6b86a65fdc1d46b178ce250cfec10b977a04c"
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
