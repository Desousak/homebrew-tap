# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SudoTouchid < Formula
  desc "Permanent TouchID & Apple Watch support for `sudo`."
  homepage "https://github.com/Desousak/sudo-touchid"
  url "https://github.com/Desousak/sudo-touchid/archive/refs/tags/0.4.3.tar.gz"
  sha256 "aadc41af304feb99104ba9f47667f70e66ba62c527d13c2463540f690192c00d"
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
