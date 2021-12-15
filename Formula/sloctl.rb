class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.63"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.63/sloctl-macos-0.0.63.zip"
      sha256 "768a26285d00100aa95b268b7e6e7e362342f8770e0ab09d73b31f00735298b2"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.63/sloctl-linux-0.0.63.zip"
      sha256 "023a8c9ba1b057874c967ec94b7cf49e591f8916d504c37d6723d587b01b7613"
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
