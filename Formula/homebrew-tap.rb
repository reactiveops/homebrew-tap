# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HomebrewTap < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage "https://github.com/FairWindsOps/rbac-lookup"
  version "0.6.4"
  license "apache-2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.6.4/rbac-lookup_0.6.4_Darwin_x86_64.tar.gz"
    sha256 "7d914297d9ceede8f07d196d56de788ede081e844c17b435ea04092541c15b1e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.6.4/rbac-lookup_0.6.4_Linux_x86_64.tar.gz"
    sha256 "9f6f63b2ee6f5420530b6aa589b4c8c4a4685bf87447286881d37afdd80a7fb2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.6.4/rbac-lookup_0.6.4_Linux_arm64.tar.gz"
    sha256 "df85119b39a22aee0d9472d5c48210943329cbd3f878aec159fa1b5ccd6818a1"
  end

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
