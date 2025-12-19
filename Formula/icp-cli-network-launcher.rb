class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/dfinity/homebrew-tap/releases/download/icp-cli-network-launcher-11.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "989a6248a14aebb56ac8ca6dd77fc5f9d64354353519572001a9302b032d2c0f"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c65814f59f3e277885db70616cba88b3436a7465b57b632ca8bb59100b526dd3"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "26f296452f6a9713aab88e48ab8514e6109d71c5fb29fe87ed7e73a0c4d790e3"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
