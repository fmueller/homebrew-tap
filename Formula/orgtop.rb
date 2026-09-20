# frozen_string_literal: true

# orgtop is built and published by https://github.com/fmueller/orgtop.
# Source tag:    v0.0.3
# Source commit: 40aac618b9f3e2a5d214088afac534a2cccb265e
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
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.3/orgtop_0.0.3_darwin_amd64.tar.gz"
      sha256 "61ee26257e7a2634ba1bb067a2bc72c54cc46ec541edb62e48a09c84c11c0c62"
    end
    on_arm do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.3/orgtop_0.0.3_darwin_arm64.tar.gz"
      sha256 "e3d798b4ab95019d23a6915176204eb4344c75fe99f4a03fa03ee524205f925c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.3/orgtop_0.0.3_linux_amd64.tar.gz"
      sha256 "327547ee22b13365024aa6ed7f7c65fc82ee6f345160cf5f06f81e915a80dbd4"
    end
    on_arm do
      url "https://github.com/fmueller/orgtop/releases/download/v0.0.3/orgtop_0.0.3_linux_arm64.tar.gz"
      sha256 "093b9d8a9a8fd8bbc3d2649f23e1339bd633dc95ce8a30c3cb51a7c5d22225fc"
    end
  end

  def install
    bin.install "orgtop"
  end

  test do
    assert_match "0.0.3", shell_output("#{bin}/orgtop --version")
  end
end
