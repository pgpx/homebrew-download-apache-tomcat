# http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class DownloadApacheTomcatAT7069 < Formula
  version '7.0.69'
  desc "Download Apache Tomcat"
  homepage 'https://tomcat.apache.org/index.html'
  url "https://archive.apache.org/dist/tomcat/tomcat-7/v#{version}/bin/apache-tomcat-#{version}.tar.gz"
  sha256 '5202aab315355d001c41cfe81820e55d3dcd4b4da191054464c68182fa2a9c0f'
  keg_only("Formula just downloads and unpacks Tomcat for development - we don't want to start it")

  def install
    prefix.install Dir["*"]
  end
end
