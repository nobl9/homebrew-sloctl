class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.56"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.56/sloctl-macos-0.0.56.zip"
      sha256 "e2e3dc4c7d10de3c26bef5ed7bab1b6a4b77c1884a63d682c8a59f35a3ca27ee"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.56/sloctl-linux-0.0.56.zip"
      sha256 "57fd0c6b8411575553b8f73e60bedc7449dd7ca68c1e8fd17e1ac529bb2df453"
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
