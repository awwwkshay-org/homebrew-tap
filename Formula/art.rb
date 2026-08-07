class Art < Formula
  desc "Generate production-oriented Rust full-stack monorepos"
  homepage "https://github.com/awwwkshay-org/awesome-rust-templates"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.1.0/art-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "974306982a56a642f348b90e2c17d430aecc9f43e30754ca10adb589b140aa92"
    else
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.1.0/art-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "eff2f8157c3e546d35fb1bb4ffaef1d4a89d2b67c16cca0e75ca56ab42315af2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.1.0/art-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "852121a605b23058b1505c8f15454253ca652a493a9b452c4b4111fe76f69d38"
    else
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.1.0/art-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca7c9c739d4237cc0c9fcbe93c74346cbca3c96b4064fc73f303417119a3f944"
    end
  end

  def install
    bin.install "art"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/art --version")
  end
end
