# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SudoTouchid < Formula
  desc "Permanent TouchID & Apple Watch support for `sudo`."
  homepage "https://github.com/Desousak/sudo-touchid"
  url "https://github.com/Desousak/sudo-touchid/archive/refs/tags/0.4.3.tar.gz"
  sha256 "9d59ade86e3a89c35610f0cfbd27eb46b04457c0f1044273d1eff958da5794e4"
  license "EPL-2.0"

  def install
    bin.install "sudo-touchid.sh" => "sudo-touchid"
  end

  service do
    run [bin/"sudo-touchid"]
    require_root true
    run_type :cron
    cron "0 12 * * *"
  end
end
