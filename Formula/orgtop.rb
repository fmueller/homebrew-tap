# frozen_string_literal: true

# orgtop is built and published by https://github.com/fmueller/orgtop.
# Source tag:    v0.0.5
# Source commit: 761632eb5b2a28c1ceda54ba395b5879525ec7c1
#
# This tap redistributes that release's archives byte for byte and performs no
# build of its own. Verify a download against the release's checksums.txt and
# its GitHub build attestation:
#
#   gh attestation verify <archive> --repo fmueller/orgtop
#
# Homebrew neither builds nor attests these bytes; the canonical repository above
# is the only publisher.
class Orgtop < Formula
  desc "Terminal dashboard for GitHub organization activity"
  homepage "https://github.com/fmueller/orgtop"
  version "0.0.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.5/orgtop_0.0.5_darwin_amd64.tar.gz"
      sha256 "b9e703628f37357b637830525065699a7e6d7200f6992024153e1e00341d8f6e"
    end
    on_arm do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.5/orgtop_0.0.5_darwin_arm64.tar.gz"
      sha256 "435aa23ecf568abc5abf3dc8279152510687e4f0534ac0392f1013f930f9c1bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.5/orgtop_0.0.5_linux_amd64.tar.gz"
      sha256 "ec0f4c7c5abe709f266fce4b6851b75571daefda283de394befed59369372943"
    end
    on_arm do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.5/orgtop_0.0.5_linux_arm64.tar.gz"
      sha256 "3ebef9f69a9d5e99ed166e5b627ebd442f7447dcce8b95869942b870cdaeaf49"
    end
  end

  def install
    bin.install "orgtop"
  end

  test do
    assert_match "0.0.5", shell_output("#{bin}/orgtop --version")
  end
end
