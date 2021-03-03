class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.46"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.46/sloctl-macos.zip"
      sha256 "cd9ee5f13abd600c1b10188d589a16acc13b63ca8e635f3a2ee0a8b9e54db5f2"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.46/sloctl-linux.zip"
      sha256 "625955461725ca78670601800ba18f72105a4147ee2fc7de9679de666bd65cab"
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
