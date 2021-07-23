class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.55"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.55/sloctl-macos-0.0.55.zip"
      sha256 "efe66795b47f791155c4049e74d64b7c737e9e37089c29e6ee130f9cc415c946"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.55/sloctl-linux-0.0.55.zip"
      sha256 "a2b6acd5115b2b352082d95b4f3948a58c317b61ca5d8048d4c88638eca9b47f"
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
