class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.60"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.60/sloctl-macos-0.0.60.zip"
      sha256 "c18e1513eac992c192ab132b4bb0f7b888a36f372e593947fede9d5659c31a36"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.60/sloctl-linux-0.0.60.zip"
      sha256 "998850e068eb93b34efb16f9379053a79c235e5dabd2599f568f5cd01c7bf761"
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
