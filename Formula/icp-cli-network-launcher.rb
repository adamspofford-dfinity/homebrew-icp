class IcpCliNetworkLauncher < Formula
  desc "CLI interface to pocket-ic, used with icp-cli"
  homepage "https://github.com/dfinity/icp-cli-network-launcher"
  url "https://github.com/dfinity/icp-cli-network-launcher/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "d4cf98ef6cd721533318124bc600a344e17391f764d3663f755b2539bb6035ba"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/dfinity/homebrew-tap/releases/download/icp-cli-network-launcher-11.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "621a3c71ff8b3bc89ccb8811f806b08cd949c3d2db45872d98469e3546243f2d"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "b3a3853145f81c14e9a36576c6aa0e1620598cb9cfc720c2ca5d7baef713ae6b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6cbaed902323c681d89d7619ef202c8d5c75cb2c2d0e9bec25376c140b3d0ec7"
  end

  depends_on "jq" => :build
  depends_on "rust" => :build

  def install
    system "./package.sh", "out"
    bin.install "out/icp-cli-network-launcher"
    bin.install "out/pocket-ic"
  end
end
