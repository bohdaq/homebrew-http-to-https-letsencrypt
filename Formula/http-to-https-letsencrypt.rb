class HttpToHttpsLetsencrypt < Formula
  desc "http-to-https-letsencrypt is an application web-server for making permanent redirects from http to https."
  homepage "https://github.com/bohdaq/rust-http-to-https-letsencrypt-acme"
  url "https://github.com/bohdaq/rust-http-to-https-letsencrypt-acme/archive/refs/tags/8.0.0.tar.gz"
  sha256 "f6685f5311fb6aca7ad8c080663881d0609b2f88da39d3bf32d0bbb34263416f"
  head "https://github.com/bohdaq/http-to-https-letsencrypt.git", branch: "main"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
