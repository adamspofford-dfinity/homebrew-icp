class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"
  revision 3

  bottle do
    root_url "https://github.com/adamspofford-dfinity/homebrew-icp/releases/download/icp-cli-network-launcher-11.0.0_3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f83521c9008679d5fb3c7499372c825eec0075372ce7ab8f64e0d98accd8af03"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "1b0fd8bfa5e08dee2c1123b60d376849138530c08c9ab9779a8cf911d871c47e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "89feb5221418c109c174f72cb1a8be659e80d61d126d1e63e00ec52309d20d63"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
