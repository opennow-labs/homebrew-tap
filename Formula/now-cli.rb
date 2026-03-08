class NowCli < Formula
  desc "Keep your opennow.dev status green"
  homepage "https://github.com/opennow-labs/now-cli"
  version "0.13.0"
  license "O-Saasy"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opennow-labs/now-cli/releases/download/v0.13.0/now_darwin_arm64.tar.gz"
      sha256 "db83ab0944ea37afb578710a31db094256e54b14571cc8c61a633bafa9a97433"
    else
      url "https://github.com/opennow-labs/now-cli/releases/download/v0.13.0/now_darwin_amd64.tar.gz"
      sha256 "89907180683976094899ffff1478426d72f2981daa0fa206c25f712d883a6e1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opennow-labs/now-cli/releases/download/v0.13.0/now_linux_arm64.tar.gz"
      sha256 "6039de53dc68804b5bad6e658824a212e8c921adc29785071e862acfa6725d89"
    else
      url "https://github.com/opennow-labs/now-cli/releases/download/v0.13.0/now_linux_amd64.tar.gz"
      sha256 "56f3f81d6c2070155b6b1ebcac6096a50adca3a29fdaf85f421cc3e376fe8613"
    end
  end

  def install
    bin.install "now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/now version")
  end
end
