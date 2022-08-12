# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TeamDivider < Formula
  desc "Command line tool for randomly dividing people into teams"
  homepage "https://github.com/Aldebaranoro/team-divider"
  version "1.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Aldebaranoro/team-divider/releases/download/v1.2.1/team-divider_1.2.1_macOS_amd64.tar.gz"
    sha256 "5166ac3e8a3bc9e5679d867e21145c166dc269fa083a1d08372379aac5efda3f"

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
      url "https://github.com/Aldebaranoro/team-divider/releases/download/v1.2.1/team-divider_1.2.1_linux_amd64.tar.gz"
      sha256 "be1167c53efe8e89acb71de8b2f398ec1f0aa3d4d5a2fe2fd2855528a9d0f732"

      def install
        bin.install "bin/team-divider"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Aldebaranoro/team-divider/releases/download/v1.2.1/team-divider_1.2.1_linux_arm64.tar.gz"
      sha256 "9aae40fd5ce3b078e907c8c213d2169bcc00677430f8df621b76d8f6181d4cf9"

      def install
        bin.install "bin/team-divider"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Aldebaranoro/team-divider/releases/download/v1.2.1/team-divider_1.2.1_linux_armv6.tar.gz"
      sha256 "3777e47a394371fdb33fd6d971c4bc31f3c27fefd30731d53b756b0ac4112fbe"

      def install
        bin.install "bin/team-divider"
      end
    end
  end
end
