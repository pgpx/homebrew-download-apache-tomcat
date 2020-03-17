# http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class DownloadApacheTomcatAT70100 < Formula
  version '7.0.100'
  desc "Download Apache Tomcat"
  homepage 'https://tomcat.apache.org/index.html'
  url "https://archive.apache.org/dist/tomcat/tomcat-7/v#{version}/bin/apache-tomcat-#{version}.tar.gz"
  sha256 '3b8057cb9fd50ace772a0f92b247029fc848ed611d5cff9cb6ab832ffbb65272'
  keg_only("Formula just downloads and unpacks Tomcat for development - we don't want to start it")

  def install
    prefix.install Dir["*"]
  end
end
