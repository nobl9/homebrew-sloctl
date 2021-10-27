class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.59"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.59/sloctl-macos-0.0.59.zip"
      sha256 "0c216975d4b7dbf7ea6e025832e10fd3721d5a1e59b885e47699eca0cebd9f21"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.59/sloctl-linux-0.0.59.zip"
      sha256 "27e32fdd530fe914518b41845c56ab4fc2c757c49087f380860cf6f7ab808bcb"
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
