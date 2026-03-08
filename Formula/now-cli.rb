class NowCli < Formula
  desc "Keep your opennow.dev status green"
  homepage "https://github.com/opennow-labs/now-cli"
  version "0.14.0"
  license "O-Saasy"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opennow-labs/now-cli/releases/download/v0.14.0/now_darwin_arm64.tar.gz"
      sha256 "2de9df6c8d20c87496c7b137214d03af721157f34c572a692ae5b767dcb7c116"
    else
      url "https://github.com/opennow-labs/now-cli/releases/download/v0.14.0/now_darwin_amd64.tar.gz"
      sha256 "beca1687bac499e339783fc011362bee990891cee416249f6c7228560a5e9020"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opennow-labs/now-cli/releases/download/v0.14.0/now_linux_arm64.tar.gz"
      sha256 "07f03e2809f1f1e5a7a266a82a1301582f3dcb1a6e10f81ea907e97c8df89c2b"
    else
      url "https://github.com/opennow-labs/now-cli/releases/download/v0.14.0/now_linux_amd64.tar.gz"
      sha256 "b02d36b363fb8e2ab7127b39215b1180c8e64637bd742bb72ce6b169986a8774"
    end
  end

  def install
    bin.install "now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/now version")
  end
end
