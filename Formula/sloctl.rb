class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.50"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.50/sloctl-macos-0.0.50.zip"
      sha256 "359cb2f9e690be65f1d1a55fbc0c44bdf5c7819db70599e96bdb0539f3b34279"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.50/sloctl-linux-0.0.50.zip"
      sha256 "67b1ec287efcb37a5b9e0a060b18fad06db07b2431cb4dd83539f02693f4d058"
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
