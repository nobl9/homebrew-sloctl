class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.57"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.57/sloctl-macos-0.0.57.zip"
      sha256 "e629ef3e5df7706f11de93a933d036419db38731d45ba1b222def179570c0d45"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.57/sloctl-linux-0.0.57.zip"
      sha256 "98567cd5622ac913dd02abc836d59a96175805daa0e14cc8dc2baeb351c28bda"
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
