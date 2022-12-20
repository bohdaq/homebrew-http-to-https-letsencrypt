class HttpToHttpsLetsencrypt < Formula
  desc "http-to-https-letsencrypt is an application web-server for making permanent redirects from http to https."
  homepage "https://github.com/bohdaq/rust-http-to-https-letsencrypt-acme"
  url "https://github.com/bohdaq/rust-http-to-https-letsencrypt-acme/archive/refs/tags/8.0.0.tar.gz"
  sha256 "d3e19c5de44372e536fb65f7d06e90675d953ebae8cedc2d619654bae5bd4af5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
