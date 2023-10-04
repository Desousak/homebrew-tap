# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SudoTouchid < Formula
  desc "Permanent TouchID & Apple Watch support for `sudo`."
  homepage "https://github.com/Desousak/sudo-touchid"
  url "https://github.com/Desousak/sudo-touchid/archive/refs/tags/0.4.3.tar.gz"
  sha256 "9c27f15e3bef25748d6e52c55178ce979f494748db57cc8026c0a40c805ec7f2"
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
