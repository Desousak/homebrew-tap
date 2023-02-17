# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SudoTouchid < Formula
  desc "Permanent TouchID & Apple Watch support for `sudo`."
  homepage "https://github.com/Desousak/sudo-touchid"
  url "https://github.com/Desousak/sudo-touchid/archive/refs/tags/0.4.2.tar.gz"
  sha256 "c2cc9d9304c5bcb03910ec98fa92f8271abce2f9c26800323aaf9c4ee1eff625"
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
