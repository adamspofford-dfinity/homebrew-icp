class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"
  revision 2

  bottle do
    root_url "https://github.com/adamspofford-dfinity/homebrew-icp/releases/download/icp-cli-network-launcher-11.0.0_1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8cc0f472500624cb464b7fe7747649875eaea0e48edc16cdaacd8bee0b4bd65a"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c12dee4e0b6e0a1f9b8c41b44a8569c1e32d00a7724e55a00b42dba9f8db1bef"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c1725655efdf999c5a744ea51d9024557af40b2b54e7df7786d21ebb3a5e9f2b"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
