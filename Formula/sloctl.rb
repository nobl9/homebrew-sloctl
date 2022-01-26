class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.67"

    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.67/sloctl-macos-0.0.67.zip"
      sha256 "eb1191e4b8c536f3b90c063b24afcc55fe8c8dbf175c8ee068df771e609a2e0e"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.67/sloctl-linux-0.0.67.zip"
      sha256 "1a38608e2b053bf879f863b768dafb428863ab98c67e19f8c1c6c960752bfb17"
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
