class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.74"

    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.74/sloctl-macos-0.0.74.zip"
      sha256 "ffb5475c7f9c1a0b840b5fc2cf07ae8c1a72b832936dffa7357fa08be44229cc"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.74/sloctl-linux-0.0.74.zip"
      sha256 "29bba50fe85073dbd8d8eda4889f21ad9e11bafc1d75e506abcd907bcd829f1a"
    end

    def install
      bin.install "sloctl"
    end

    def caveats
        <<~EOS
          Thank you for installing the command-line client for Nobl9!

          To see help and a list of available commands type:
            $ sloctl help

          For more information on how to use the command-line client
          and the Nobl9 managed cloud service, visit:
            https://nobl9.com
        EOS
      end

    test do
        assert_predicate bin/"sloctl", :exist?
        system "sloctl", "--help"
      end
  end
