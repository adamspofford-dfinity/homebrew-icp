class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"
  revision 4

  bottle do
    root_url "https://github.com/adamspofford-dfinity/homebrew-icp/releases/download/icp-cli-network-launcher-11.0.0_4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1bae5a1e99600b6d5f2f6bc80446987269402eb8eb930fe37871da8c6cfdeb62"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "f707cd6d2f9ae785482c141cd8dd28c58866a2d5d250b1e040164a75e38f0cf8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d5928b6e0629ac97974881196b18c27d412440f1f8302e50a9804c7e88de764d"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
