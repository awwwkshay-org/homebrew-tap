class Art < Formula
  desc "Generate production-oriented Rust full-stack monorepos"
  homepage "https://github.com/awwwkshay-org/awesome-rust-templates"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.2.0/art-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "53e40b1d8d5d09c84483333cbfb69404be2bd8fc84dd8de2b9c132d41577d008"
    else
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.2.0/art-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "299fff68f10cd6dff671054f54ffb1b1cf01a7b6ae4e871bbedd2f54a9ec6635"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.2.0/art-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eec31416f6a5b3f1ea6cc8f42ab84b305b871f47bca7b897e9785e890a3875f3"
    else
      url "https://github.com/awwwkshay-org/awesome-rust-templates/releases/download/v0.2.0/art-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad49713eb4c7ae124c59d1756d1af28de641a4606f3ad92e04ac165bd1a1b468"
    end
  end

  def install
    bin.install "art"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/art --version")
  end
end
