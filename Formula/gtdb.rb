class Greptime < Formula
  desc "An open-source, cloud-native, distributed time-series database with PromQL/SQL/Python supported."
  homepage "https://github.com/GreptimeTeam/greptimedb"
  version v0.7.0
  VERSION = File.read("version.txt").strip

  if Hardware::CPU.intel?
    url "https://github.com/GreptimeTeam/greptimedb/releases/download/#{VERSION}/greptime-darwin-amd64-#{VERSION}.tar.gz"
    sha256 "efcf04d1cfb5c521091aa428bec011560d2a743d32df8b8f0c1391f5783f311c"
  elsif Hardware::CPU.arm?
    url "https://github.com/GreptimeTeam/greptimedb/releases/download/#{VERSION}/greptime-darwin-arm64-#{VERSION}.tar.gz"
    sha256 "cc4bc7823ea69b96a38de26888312998d60c8ded546b87ff9cc8175e6db82cf1"
  end

  def install
    bin.install "gtdb"
  end
end
