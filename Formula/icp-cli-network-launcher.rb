class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"
  revision 2

  bottle do
    root_url "https://github.com/adamspofford-dfinity/homebrew-icp/releases/download/icp-cli-network-launcher-11.0.0_2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1dc5064bd6105e5bfcfa0b48d0dc0aa96e189a65a824c805eaf889d79d948d4d"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "65bf889a28aa49d69283f9e70cfa829bf718b5de14e557be7fc7a371d93cdcbb"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ddc0290e9bf97647e709e0b0f280006b5be1a4e919ce10ee58413783b9e57afe"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
