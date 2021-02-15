class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.39"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.39/sloctl-macos-0.0.39.zip"
      sha256 "41572fe159673602c5a3ba55dbb4cef4e93386e68433cef98fe4c601b23699a4"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.39/sloctl-linux-0.0.39.zip"
      sha256 "7d955359b21b736de04fbcbe8c2767da743465a38506cd9dde1ad3e097e02fab"
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
