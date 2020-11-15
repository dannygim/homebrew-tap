# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Hellodeno < Formula
  desc "Deno Demo"
  homepage "https://github.com/dannygim/hellodeno"
  url "https://github.com/dannygim/hellodeno/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "5c5b3e3e333878e621cfd9471f34733ef4d276bb4f2a2a4dff3dd573e5f714ef"
  license "MIT"

  depends_on "deno" => :build

  def install
    system "mkdir", "-p", "#{prefix}/bin"
    prefix.install "hello.ts"
    system "deno", "install", "-n", "hellodeno", "--root", "#{prefix}", "#{prefix}/hello.ts"
  end

  test do
    system "false"
  end
end
