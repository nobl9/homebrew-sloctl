class Sloctl < Formula
    desc "Command-line client for Nobl9"
    homepage "https://nobl9.com"
    version "0.0.65"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.65/sloctl-macos-0.0.65.zip"
      sha256 "493521570715ba494033fbe156081bbd289b52da35eaa8a3c29436d24977c356"
    elsif OS.linux?
      url "https://github.com/nobl9/sloctl/releases/download/0.0.65/sloctl-linux-0.0.65.zip"
      sha256 "1f23ec9010019a9d0bfa0b52dc3b6656ce1b670222602ad607592e03add3555d"
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
