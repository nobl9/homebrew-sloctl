class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.45"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.45/sloctl-macos.zip"
      sha256 "2879982b8e8d23f1355944726657697ba833ada1d8fbc0f6cf0c1a1f9d81519f"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.45/sloctl-linux.zip"
      sha256 "9e4a8cbd3797330984571a49dfbb91464e6fdae88ac4dfb12cf60369185d9c68"
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
