# This file was generated by GoReleaser. DO NOT EDIT.
class Nova < Formula
  desc "Check installed Helm charts for updates"
  homepage ""
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/FairwindsOps/Nova/releases/download/1.0.0/Nova_1.0.0_darwin_amd64.tar.gz"
    sha256 "ab5d77ccb3779c79c7cbf60d3fd3fdb38a824f848bb7d932d26543727c199544"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/Nova/releases/download/1.0.0/Nova_1.0.0_linux_amd64.tar.gz"
      sha256 "b02a04340fb71ece70d2d039709275d6808a31df1097f72ce80ce7ec98f0ff85"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/Nova/releases/download/1.0.0/Nova_1.0.0_linux_arm64.tar.gz"
        sha256 "a7a6119aee4d2855ed791479cd740e03be75323fa855d72e8159c3f862c79771"
      else
        url "https://github.com/FairwindsOps/Nova/releases/download/1.0.0/Nova_1.0.0_linux_armv6.tar.gz"
        sha256 "aa331de7cf3ab70d134a357e834e8dfeb4748d82a89bd2070581f60acb9383d9"
      end
    end
  end

  def install
    bin.install "Nova"
  end

  test do
    system "#{bin}/nova version"
  end
end
