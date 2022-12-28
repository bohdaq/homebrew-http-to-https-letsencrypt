class HttpToHttpsLetsencrypt < Formula
  desc "http-to-https-letsencrypt is an application web-server for making permanent redirects from http to https."
  homepage "https://github.com/bohdaq/rust-http-to-https-letsencrypt-acme"
  url "https://github.com/bohdaq/http-to-https-letsencrypt/archive/refs/tags/8.0.8.tar.gz"
  sha256 "790e2fed54c10d1950a91becb603af3ef6e31f4820732b9717276c2e4507bb25"
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
