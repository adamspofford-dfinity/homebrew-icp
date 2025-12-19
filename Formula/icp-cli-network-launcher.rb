class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"
  revision 3

  bottle do
    root_url "https://github.com/adamspofford-dfinity/homebrew-icp/releases/download/icp-cli-network-launcher-11.0.0_2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "534fcc049066b1723d2fb3ca4f74693425b9f2b4d3cbfa33dcf0438f5f217770"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8ca4316fd65c4d4f1d9a1061fe163b8ea9b6db3b2bf762295f1ebf9ebb6f5671"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e056eb055540fc469f78c90f0bc136b3204610f6a3236684056d773163fdb42e"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
