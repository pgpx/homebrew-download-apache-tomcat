# http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class DownloadApacheTomcatAT8038 < Formula
  version '8.0.38'
  desc "Download Apache Tomcat"
  homepage 'https://tomcat.apache.org/index.html'
  url "https://archive.apache.org/dist/tomcat/tomcat-8/v#{version}/bin/apache-tomcat-#{version}.tar.gz"
  sha256 '14ec853ec63a0f56afbe337b005968b22a02ad43b4b30c83e1fcbee0d23add3d'
  keg_only("Formula just downloads and unpacks Tomcat for development - we don't want to start it")

  def install
    prefix.install Dir["*"]
  end
end
