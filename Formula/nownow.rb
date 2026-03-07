class Nownow < Formula
  desc "Keep your now.ctx.st status green"
  homepage "https://github.com/nownow-labs/nownow"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.1/nownow_darwin_arm64.tar.gz"
      sha256 "406eec5a8ec616163991a36690adcd3fdb007605c80f13e2fe428a331c2cb929"
    else
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.1/nownow_darwin_amd64.tar.gz"
      sha256 "76bf5f1e461267f3be2b13f5b7291c49957cfbca502df1a253f49f3fdf1b38e6"
    end
  end

  def install
    bin.install "nownow"
  end

  test do
    assert_match "nownow", shell_output("#{bin}/nownow version")
  end
end
