class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.72"

    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.72/sloctl-macos-0.0.72.zip"
      sha256 "576d1bb03f1997b18d3ae8e55e7fa701cfd7ecedbfa7f6f01432065106dc5ff3"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.72/sloctl-linux-0.0.72.zip"
      sha256 "ae335af4dfdc61cfa16730cda9c98995b2825351bf8e343a7501d27edb3491ee"
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
