class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/adamspofford-dfinity/homebrew-icp/releases/download/icp-cli-network-launcher-11.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "90437ebb565b9485c51b3a901bc7b6cfb9db59043711d242d231e231ac23eba4"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "32cea47b32c9f1479fa48b49aa70851dfc9897dbf8e5ba129b0a5f8140076de6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "7289807455e81b491cfe511cef0a72a075dc5d67838ed5b255ecb588b88b6810"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
