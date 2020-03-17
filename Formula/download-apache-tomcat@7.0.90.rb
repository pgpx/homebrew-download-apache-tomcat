# http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class DownloadApacheTomcatAT7090 < Formula
  version '7.0.90'
  desc "Download Apache Tomcat"
  homepage 'https://tomcat.apache.org/index.html'
  url "https://archive.apache.org/dist/tomcat/tomcat-7/v#{version}/bin/apache-tomcat-#{version}.tar.gz"
  sha256 'fd59f8fb1e5f1184aa714e63cebba27952c30be311043642395d1af979d067b0'
  keg_only("Formula just downloads and unpacks Tomcat for development - we don't want to start it")

  def install
    prefix.install Dir["*"]
  end
end
