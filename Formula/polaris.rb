# This file was generated by GoReleaser. DO NOT EDIT.
class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  version "3.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/FairwindsOps/polaris/releases/download/3.1.3/polaris_3.1.3_darwin_amd64.tar.gz"
    sha256 "140642c2a0647e9eff789f35ff434f280f0a6cd196bc472e3b916076203b2cf8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/3.1.3/polaris_3.1.3_linux_amd64.tar.gz"
      sha256 "d9a841629b7edb0f3478b53d01058196d18ea5474028e4a122bcd3797ef514ea"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/polaris/releases/download/3.1.3/polaris_3.1.3_linux_arm64.tar.gz"
        sha256 "6fb9985dd276f53a6be813708b11415078e09596ccd65639a216c3f4fb35ae51"
      else
        url "https://github.com/FairwindsOps/polaris/releases/download/3.1.3/polaris_3.1.3_linux_armv6.tar.gz"
        sha256 "572b8a4fb208ab46ee830acfe9c4fa50bc4bd524b6c64d3eb8b9088dadde8784"
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
