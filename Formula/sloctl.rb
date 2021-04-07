class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.49"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.49/sloctl-macos-0.0.49.zip"
      sha256 "4f30b5dad5528b0036b7d44f9160c456d1d313710ebec8437827a920337082dd"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.49/sloctl-linux-0.0.49.zip"
      sha256 "4fba9e471581b3262284275ac65f21689ef70a618f8e6b4bc2999c086864aaa0"
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
