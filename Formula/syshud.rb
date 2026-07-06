class Syshud < Formula
  desc "Minimal macOS system monitor: menu bar or desktop overlay HUD"
  homepage "https://github.com/kiwixiao/syshud"
  url "https://github.com/kiwixiao/syshud/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "eafe258a21bc06bf629748a0325adfeae95bc0425ef02e054ee4b42b26e504d5"
  license "MIT"

  def install
    system "swiftc", "-O", "-o", "syshud", "syshud.swift"
    bin.install "syshud"
  end

  service do
    run [opt_bin/"syshud", "menubar"]
    keep_alive false
  end

  test do
    assert_match(/CPU .+GPU .+RAM /, shell_output("#{bin}/syshud --sample"))
  end
end
