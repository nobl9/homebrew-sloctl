class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.43"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.43/sloctl-macos-0.0.43.zip"
      sha256 "ab6171eb2b60dfb4173a49f7e510a49749278a80bb91f9910606a814369a4288  sloctl-macos-0.0.43.zip"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.43/sloctl-linux-0.0.43.zip"
      sha256 "9e6d78523f562b3bfc8c97799bcdb67f1f8c815d5704036796c3f0d3694996b2  sloctl-linux-0.0.43.zip"
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
