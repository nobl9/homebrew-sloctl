class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.61"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.61/sloctl-macos-0.0.61.zip"
      sha256 "6c86949237ec8aeff8f554055279c53b224793a7ab18720743da1f03d8d78e51"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.61/sloctl-linux-0.0.61.zip"
      sha256 "84e9d19b00b3d641be7a6583b9d33a957ab352f5ad6c5caef2e25373c2b8115d"
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
