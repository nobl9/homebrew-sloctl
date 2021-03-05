class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.47"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.47/sloctl-macos-0.0.47.zip"
      sha256 "bec50b56b146415ae654e12f1c7ae7c403a1ded9a9c84b2542b52610782eb00c"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.47/sloctl-linux-0.0.47.zip"
      sha256 "b06e9681024a9a0f7f1e1e267cd4cc5d92a8d5796fc28814d6ab479136ce9bda"
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
