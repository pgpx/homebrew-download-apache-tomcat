# http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class DownloadApacheTomcatAT9033 < Formula
  version '9.0.33'
  desc "Download Apache Tomcat"
  homepage 'https://tomcat.apache.org/index.html'
  url "https://archive.apache.org/dist/tomcat/tomcat-9/v#{version}/bin/apache-tomcat-#{version}.tar.gz"
  sha256 'd5cd9463492f4552229295a9a8c00615748f85e9de36434847d495e95b0ef796'
  keg_only("Formula just downloads and unpacks Tomcat for development - we don't want to start it")

  def install
    prefix.install Dir["*"]
  end
end
