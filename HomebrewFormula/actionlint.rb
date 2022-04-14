# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actionlint < Formula
  desc "Static checker for GitHub Actions workflow files"
  homepage "https://github.com/rhysd/actionlint#readme"
  version "1.6.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.12/actionlint_1.6.12_darwin_amd64.tar.gz"
      sha256 "9047af8a9225aa3e42d4704212b96b82b0000c867a8aaa69e323c815b9842369"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.12/actionlint_1.6.12_darwin_arm64.tar.gz"
      sha256 "0fe3ba959d9bf4545a049aa67f72944ef1388aa5e35addde46c6570dbbdfd918"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.12/actionlint_1.6.12_linux_amd64.tar.gz"
      sha256 "9a7ea97e07a2c058756609274126e78b60ed15c1ed481ccb9da94b74c24d5f3f"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.12/actionlint_1.6.12_linux_arm64.tar.gz"
      sha256 "3a78763eff446766447e7ade4aac9fb3acb93c2c2fd492548513aa3614010d4f"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.6.12/actionlint_1.6.12_linux_armv6.tar.gz"
      sha256 "2b2792e7228126b1b0a6e10e3e1937c06b29d0316a4c9af7bd0eef54a06e67aa"

      def install
        bin.install "actionlint"
        man1.install "man/actionlint.1"
      end
    end
  end

  test do
    system "#{bin}/actionlint -version"
  end
end
