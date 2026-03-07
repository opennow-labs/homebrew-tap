class Nownow < Formula
  desc "Keep your now.ctx.st status green"
  homepage "https://github.com/nownow-labs/nownow"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.0/nownow_darwin_arm64.tar.gz"
      sha256 "aa70fbacfa834a4823da8bf64f35dfa8d23f33af0f47e21438b0b55d3996c8d5"
    else
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.0/nownow_darwin_amd64.tar.gz"
      sha256 "1361fa79a246e116039d12dacd4d3c207e8a5636b322ac4d4006bef2f1be92d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.0/nownow_linux_arm64.tar.gz"
      sha256 "496e5ddde64907be00ed5c6725166353c0aa23f7d169b1f0385a592cfe61276c"
    else
      url "https://github.com/nownow-labs/nownow/releases/download/v0.1.0/nownow_linux_amd64.tar.gz"
      sha256 "c9ca2390f975abe0865e03b838b21c125f718a3cb3f8332fde2103685e3acc71"
    end
  end

  def install
    bin.install "nownow"
  end

  test do
    assert_match "nownow", shell_output("#{bin}/nownow version")
  end
end
