class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"
  revision 1

  bottle do
    root_url "https://github.com/adamspofford-dfinity/homebrew-icp/releases/download/icp-cli-network-launcher-11.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c2c98b39f7773ab4ad493dfa75f4e7dd1af5e25bd840223a2b2a4554e0424f64"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c546785b1679394d03a82cccf2de5bf947aefdc1679a540d8c9f37884dd01274"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c643a2b861ca5f8611e06213cb5864935d3019a1d3f71d513fe01aa589805b6f"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
