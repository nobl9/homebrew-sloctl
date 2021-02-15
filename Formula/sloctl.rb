class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.44"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.44/sloctl-macos-0.0.44.zip"
      sha256 "bb87a5e786f801b6a130d6c2b49ad3be7d0b54f450135857342d0ac7e7a32408"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.44/sloctl-linux-0.0.44.zip"
      sha256 "a934c2c0c001c7d43647c0d01f412e016e76630d100e27612edb9457e8e93867"
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
