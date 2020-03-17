# http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class DownloadApacheTomcatAT8553 < Formula
  version '8.5.53'
  desc "Download Apache Tomcat"
  homepage 'https://tomcat.apache.org/index.html'
  url "https://archive.apache.org/dist/tomcat/tomcat-8/v#{version}/bin/apache-tomcat-#{version}.tar.gz"
  sha256 '72e3defbff444548ce9dc60935a1eab822c7d5224f2a8e98c849954575318c08'
  keg_only("Formula just downloads and unpacks Tomcat for development - we don't want to start it")

  def install
    prefix.install Dir["*"]
  end
end
