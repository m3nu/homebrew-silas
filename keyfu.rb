require "formula"

class Keyfu < Formula
  homepage "http://www.keyfu.com"
  url "https://github.com/silas/keyfu/releases/download/0.3.0/keyfu_darwin_amd64.zip"
  sha256 "2d5cc33a5e98204f3059271c00b1d1f73e6ad1d2ed4758d53dc0742f3e9157d3"

  depends_on :arch => :x86_64

  def install
    bin.install "keyfu"
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/keyfu</string>
        <!--
        <string>-c=#{etc}/keyfu.conf</string>
        -->
      </array>
      <key>EnvironmentVariables</key>
      <dict>
        <key>PORT</key>
        <string>9000</string>
        <!--
        <key>KEYFU_PATH</key>
        <string>#{opt_share}/keyfu</string>
        -->
      </dict>
      <key>KeepAlive</key>
      <true/>
      <key>RunAtLoad</key>
      <true/>
    </dict>
    </plist>
    EOS
  end
end
