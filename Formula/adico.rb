class Adico < Formula
  desc "Source-owned component installer for Dioxus applications"
  homepage "https://github.com/awwwkshay-org/awesome-dioxus-components"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/awwwkshay-org/awesome-dioxus-components/releases/download/v0.1.0/adico-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "4072a80d9e988f82a441b84736ad1c4f62a5592bf255978cdc06c8fe86b393e8"
    else
      url "https://github.com/awwwkshay-org/awesome-dioxus-components/releases/download/v0.1.0/adico-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ce8fa444a583ec49627ca5eb12beed0f11fdc44368c7907c2b4ee8b19895e587"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/awwwkshay-org/awesome-dioxus-components/releases/download/v0.1.0/adico-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6b0eb0f5ce06bbd815450e66e64276113f586f88f2dda34d2fb9b6cdb36edb3"
    else
      url "https://github.com/awwwkshay-org/awesome-dioxus-components/releases/download/v0.1.0/adico-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3bd59bfe41f56d548e0cceb6d5cbf15c8b71c4ea45e8c744d926dd219f7ccd81"
    end
  end

  def install
    bin.install "adico"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adico --version")
  end
end
