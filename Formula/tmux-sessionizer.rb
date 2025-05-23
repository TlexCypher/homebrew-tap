# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TmuxSessionizer < Formula
  desc "Tmux session manager with fzf"
  homepage "https://github.com/TlexCypher/tmux-sessionizer"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/TlexCypher/tmux-sessionizer/releases/download/v0.0.7/tmux-sessionizer_Darwin_x86_64.tar.gz"
      sha256 "6873249813d01c6bf55f8d79ff01db7933399140b7743f8122f8ee0f2d74705a"

      def install
        bin.install "tmux-sessionizer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/TlexCypher/tmux-sessionizer/releases/download/v0.0.7/tmux-sessionizer_Darwin_arm64.tar.gz"
      sha256 "0cd48d3fc56a55a4c8ba5f42085234b92ec58f7cb96bd83e2a3092ff276beaad"

      def install
        bin.install "tmux-sessionizer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/TlexCypher/tmux-sessionizer/releases/download/v0.0.7/tmux-sessionizer_Linux_x86_64.tar.gz"
      sha256 "005e1910d0a131453e6ca9b67222208443013c00d662ba7446854e9b83a23fbc"
      def install
        bin.install "tmux-sessionizer"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/TlexCypher/tmux-sessionizer/releases/download/v0.0.7/tmux-sessionizer_Linux_arm64.tar.gz"
      sha256 "4bdf85b9e45ecfc74bbd89990c8956789c4dc8ab046c50707b0ae2db03fd0236"
      def install
        bin.install "tmux-sessionizer"
      end
    end
  end

  test do
    system "#{bin}/tmux-sessionizer", "--version"
  end
end
