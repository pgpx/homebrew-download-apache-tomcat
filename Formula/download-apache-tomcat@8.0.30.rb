# http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class DownloadApacheTomcatAT8030 < Formula
  version '8.0.30'
  desc "Download Apache Tomcat"
  homepage 'https://tomcat.apache.org/index.html'
  url "https://archive.apache.org/dist/tomcat/tomcat-8/v#{version}/bin/apache-tomcat-#{version}.tar.gz"
  sha256 '2fc3dde305e08388a12bd2868063ab6829a1d70acd9affe3a8707bd9679e0059'
  keg_only("Formula just downloads and unpacks Tomcat for development - we don't want to start it")

  def install
    prefix.install Dir["*"]
  end
end
