class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.48"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.48/sloctl-macos-0.0.48.zip"
      sha256 "b060a3ce7e502d6024f7b19f591c24f1bcd6815f4e04eb06dd91dd7918db0f8a"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.48/sloctl-linux-0.0.48.zip"
      sha256 "42e97b45f5c32c6d05c8919b3ba28ee9fed112c7ca64fd9e40e23390619a78f8"
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
