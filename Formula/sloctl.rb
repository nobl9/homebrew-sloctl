class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.58"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.58/sloctl-macos-0.0.58.zip"
      sha256 "d9aa5f1da7375c7ae8ec630848d40d30364bcfcec1f2ab24f29e3edff1cab198"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.58/sloctl-linux-0.0.58.zip"
      sha256 "81bc553af3f25e1760d029adda6bcf6cb37c2887c00857fdefdf98b579ed8900"
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
