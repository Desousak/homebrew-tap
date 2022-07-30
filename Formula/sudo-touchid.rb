# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SudoTouchid < Formula
  desc "Permanent TouchID & Apple Watch support for `sudo`."
  homepage "https://github.com/Desousak/sudo-touchid"
  url "https://github.com/Desousak/sudo-touchid/archive/refs/tags/0.4.1.tar.gz"
  sha256 "682da1e2af487198fa7139055379f302fcc39e7ea3beb06326f5c4ecb67bef93"
  license "EPL-2.0"

  def install
    bin.install "sudo-touchid.sh" => "sudo-touchid"
  end

  plist_options :startup => true

  service do
    run [bin/"sudo-touchid"]
  end
end
