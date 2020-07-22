# This file was generated by GoReleaser. DO NOT EDIT.
class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  version "1.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/FairwindsOps/polaris/releases/download/1.2.0/polaris_1.2.0_darwin_amd64.tar.gz"
    sha256 "34ee76aeea51ce6d27f3266e86e010cd0780a44b39fd4e9a61d4b663bf6ae655"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/1.2.0/polaris_1.2.0_linux_amd64.tar.gz"
      sha256 "75a9b5a3e0b0534af9f371be0411e302d8e2b2c8ba78f204449fbd78fc8b8856"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/polaris/releases/download/1.2.0/polaris_1.2.0_linux_arm64.tar.gz"
        sha256 "66bd1d7549056835ed787ae891133b51a64a1423c75562738b8cee8988fed8ef"
      else
        url "https://github.com/FairwindsOps/polaris/releases/download/1.2.0/polaris_1.2.0_linux_armv6.tar.gz"
        sha256 "0c7c8611f7822c5ac81ef49ad9e682ce305f5a4f260e75699408f2779e594d0e"
      end
    end
  end

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris version"
  end
end
