# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SudoTouchid < Formula
  desc "Permanent TouchID & Apple Watch support for `sudo`."
  homepage "https://github.com/Desousak/sudo-touchid"
  url "https://github.com/Desousak/sudo-touchid/archive/refs/tags/0.4.4.tar.gz"
  sha256 "ff1ef14fd027c49562103f419a4c26ea8ca985f451bc7d0909ab7f3b196ea58a"
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
