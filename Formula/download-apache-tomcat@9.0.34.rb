# http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class DownloadApacheTomcatAT9034 < Formula
  version '9.0.34'
  desc "Download Apache Tomcat"
  homepage 'https://tomcat.apache.org/index.html'
  url "https://archive.apache.org/dist/tomcat/tomcat-9/v#{version}/bin/apache-tomcat-#{version}.tar.gz"
  sha256 '321de5b18a48ec09d2963d9faba4bfeafc7dd2203d80a2ef7e7a20b159e2120a'
  keg_only("Formula just downloads and unpacks Tomcat for development - we don't want to start it")

  def install
    prefix.install Dir["*"]
  end
end
