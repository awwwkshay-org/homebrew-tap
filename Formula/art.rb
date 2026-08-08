class Art < Formula
  desc "Generate production-oriented Rust full-stack monorepos"
  homepage "https://github.com/awwwkshay-org/awesome-rust-templates"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.3.0/art-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "840cf485bdd071b192a275a3c2324143c4f983c9118e95c44c8598262438dbee"
    else
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.3.0/art-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "4dd75b49120a492b23c04e7f41437d075e5242f0172d3cf809f70ffe43940bb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.3.0/art-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70acadfcd1c8f67d168c8dfde96f5d4a8c1fe7c1cd66107d1961562425e7641c"
    else
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.3.0/art-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1abcc9e256cbfffff230ff1c5d158ca93a5a76576992a7ca89c86a4f8d7dd4fe"
    end
  end

  def install
    bin.install "art"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/art --version")
  end
end
