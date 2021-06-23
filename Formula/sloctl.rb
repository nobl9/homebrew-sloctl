class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.53"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.53/sloctl-macos-0.0.53.zip"
      sha256 "46f45c24baf4c262fe05534881ae9e998c6b4b4f16151f72878f317fea68ce33"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.53/sloctl-linux-0.0.53.zip"
      sha256 "23592487184b1b6c9226f7c90fa5aa3ba75ee10d7fae26031cf6f3e5189815fa"
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
