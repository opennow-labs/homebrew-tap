class Nownow < Formula
  desc "Keep your now.ctx.st status green"
  homepage "https://github.com/nownow-labs/nownow"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.0/nownow_darwin_arm64.tar.gz"
      sha256 "1ed6d538819aa9a0e40231879623a0a7b57edda58b7f2e26ebb0180960895ca4"
    else
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.0/nownow_darwin_amd64.tar.gz"
      sha256 "19b729dec0f2b32c3828b8b024056a51c22fb30310cde68cd553ca8293d2ed40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.0/nownow_linux_arm64.tar.gz"
      sha256 "c28b6a0ee3745c7b8dd1ee74f2f994d41b8674d574f7fe886a1e293970bd58cf"
    else
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.0/nownow_linux_amd64.tar.gz"
      sha256 "f71a4930ae43ce532310439b035f284159364e1a38b039df8acc0ede7961185c"
    end
  end

  def install
    bin.install "nownow"
  end

  test do
    assert_match "nownow", shell_output("#{bin}/nownow version")
  end
end
