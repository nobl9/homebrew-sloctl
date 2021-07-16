class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.54"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.54/sloctl-macos-0.0.54.zip"
      sha256 "498a8a7cf87a0d29e4cdec00d09e1f56e350104124d8eb2e693e60b4a96f2a52"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.54/sloctl-linux-0.0.54.zip"
      sha256 "92a9f3db23bcb672b62dd8841590948683e7f3b0e195ddd36c6769c062763fab"
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
