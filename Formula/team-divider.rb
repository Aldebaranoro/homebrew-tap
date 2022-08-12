# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TeamDivider < Formula
  desc "Command line tool for randomly dividing people into teams"
  homepage "https://github.com/Aldebaranoro/team-divider"
  version "1.2.3"
  license "MIT"

  on_macos do
    url "https://github.com/Aldebaranoro/team-divider/releases/download/v1.2.3/team-divider_1.2.3_macOS_amd64.tar.gz"
    sha256 "764a2d96cf693edd74ad8d28c24c1ba8e4029a851321981341dd48e29d999be3"

    def install
      bin.install "bin/team-divider"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the TeamDivider
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Aldebaranoro/team-divider/releases/download/v1.2.3/team-divider_1.2.3_linux_amd64.tar.gz"
      sha256 "adfe633bd620264067e3f368d28f3d693f2e178f89f47be45e9d0303ac3a1119"

      def install
        bin.install "bin/team-divider"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Aldebaranoro/team-divider/releases/download/v1.2.3/team-divider_1.2.3_linux_arm64.tar.gz"
      sha256 "66946470a5950a5527aeba365e64eba1e4cf2f5d39e42b84efa21fa5059abcc7"

      def install
        bin.install "bin/team-divider"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Aldebaranoro/team-divider/releases/download/v1.2.3/team-divider_1.2.3_linux_armv6.tar.gz"
      sha256 "61705fad01eed86b389c7897359208ae0896f5dfed619221bd16f9f4ccf5992b"

      def install
        bin.install "bin/team-divider"
      end
    end
  end
end
