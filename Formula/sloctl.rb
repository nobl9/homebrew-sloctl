class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.52"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.52/sloctl-macos-0.0.52.zip"
      sha256 "1ae2b6aa66b1d7a0061e459e4236b43a7a742dc1c73e11126de07e63d2459072"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.52/sloctl-linux-0.0.52.zip"
      sha256 "ae7e59a3e75c479cbfad2a6bba68358f9eb4a866bab17e214dfb659a53dfde90"
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
