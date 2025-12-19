class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"
  revision 2

  bottle do
    root_url "https://github.com/adamspofford-dfinity/homebrew-icp/releases/download/icp-cli-network-launcher-11.0.0_2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f2b9f4320cfd06ae741ef4ecbb8885f1179f50bfc544640fbb20066ff92854c6"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "3cc10ce1e9439c67d836b04df66caadfb808d841315daebf6d94773cb3e80354"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4dd3f74f8fd48b4b0db5b982b4a830d373543c4a1d0432af97a47c7f4ad8b82c"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
