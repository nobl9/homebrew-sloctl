class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.73"

    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.73/sloctl-macos-0.0.73.zip"
      sha256 "adb2c493d0bf86bd45aae11be6bd5747163d68229e9293a3c0deed9c43bf1876"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.73/sloctl-linux-0.0.73.zip"
      sha256 "8ef1fcb3345fa42d3e44c7f6a38de74a4d61f81c6be7d3e8140023490847ed4b"
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
