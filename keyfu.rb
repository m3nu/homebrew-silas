require "formula"

class Keyfu < Formula
  homepage "http://www.keyfu.com"
  version "0.4.0"
  url "https://github.com/silas/keyfu/releases/download/#{version}/keyfu_darwin_amd64.zip"
  sha256 "3a5ef2ce6227f0be28fe5b38cd44ad594a212fc2dc15cde3b2509737405acca1"

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
