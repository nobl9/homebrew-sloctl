class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.69"

    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.69/sloctl-macos-0.0.69.zip"
      sha256 "3bfea48eb2bc7b6fa62e0fa9cd314ede574fbb1d633326ed9c2b249d3a73ca28"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.69/sloctl-linux-0.0.69.zip"
      sha256 "a13ac094b504d0fa7c7ada8afe641db597de80e3e6ad50e99c914d561e2dc1a9"
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
