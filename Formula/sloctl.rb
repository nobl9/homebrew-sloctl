class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.51"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.51/sloctl-macos-0.0.51.zip"
      sha256 "8f2a74e05a3d808c288e85e77b07a8ddbdab1350486864facb5b454468841b33"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.51/sloctl-linux-0.0.51.zip"
      sha256 "e108d9252c171ba5b29642c9f1897bf28ef234f67c4768a0bbe834e618dd2a7d"
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
