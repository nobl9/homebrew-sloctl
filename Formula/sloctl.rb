class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.68"

    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.68/sloctl-macos-0.0.68.zip"
      sha256 "fb9e286d790232a9c47bbd161835a6095a2be37953c7ea5373e2e19e05ab5e71"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.68/sloctl-linux-0.0.68.zip"
      sha256 "1a5c1473f521a7a8e6263418129f20c1dd71d051d102d484e9b07e2c67f433f8"
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
