# frozen_string_literal: true

# orgtop is built and published by https://github.com/fmueller/orgtop.
# Source tag:    v0.0.4
# Source commit: 06baaf6a29508f3efdd78417cdaa7d5ff797e5fa
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
  version "0.0.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.4/orgtop_0.0.4_darwin_amd64.tar.gz"
      sha256 "d01c6e96f000c7a725f8b145149e1427f34c80d6371685b57cb4fe3324d8b8f2"
    end
    on_arm do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.4/orgtop_0.0.4_darwin_arm64.tar.gz"
      sha256 "f19068c50486c0b28e3ff989c1eff2f0edf6b74631fcbcdb8e5e78b6bfacc673"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.4/orgtop_0.0.4_linux_amd64.tar.gz"
      sha256 "2830c79c4577819a9e15b56ae0bad66f9d22e777cd0d04bf080cc331519f638d"
    end
    on_arm do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.4/orgtop_0.0.4_linux_arm64.tar.gz"
      sha256 "179d65e38e7ccb45f1bdfe14bd2aff70969c71be18cb47189f85326ac4393801"
    end
  end

  def install
    bin.install "orgtop"
  end

  test do
    assert_match "0.0.4", shell_output("#{bin}/orgtop --version")
  end
end
