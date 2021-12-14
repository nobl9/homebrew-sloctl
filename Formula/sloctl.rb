class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.62"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.62/sloctl-macos-0.0.62.zip"
      sha256 "7f355c6782ab0c555d95e1a8bc87f5509914639d48e288889373e5f4fc3e14c7"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.62/sloctl-linux-0.0.62.zip"
      sha256 "c79020de45b9d81243c07babe6180ce8aaeb1220d7ca759a6cd4695f128d04e8"
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
