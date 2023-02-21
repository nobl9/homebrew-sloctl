# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sloctl < Formula
  desc "Command-line client for Nobl9"
  homepage "https://nobl9.com"
  version "0.0.83"

  on_macos do
    url "https://github.com/nobl9/sloctl/releases/download/v0.0.83/sloctl-macos-0.0.83"
    sha256 "a99e7c3216ce3fbc7aa8282dec941e1b6393ada0a6074b30594542fd6cea18ce"

    def install
      bin.install Dir['sloctl-*-0.0.83'].first()  => "sloctl"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Sloctl
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nobl9/sloctl/releases/download/v0.0.83/sloctl-linux-0.0.83"
      sha256 "f8c82668df729ba7dfe803f023b06c9f37125e4196b113a068f090ca542c33ae"

      def install
        bin.install Dir['sloctl-*-0.0.83'].first()  => "sloctl"
      end
    end
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
