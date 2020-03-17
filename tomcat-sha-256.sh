#!/usr/bin/env bash
set -e

VERSION=$1
MAJOR=$(echo $VERSION | cut -c1-1)
FILENAME=apache-tomcat-$VERSION.tar.gz
URL=https://archive.apache.org/dist/tomcat/tomcat-$MAJOR/v$VERSION/bin/$FILENAME

mkdir -p temp
cd temp
wget --timestamping "$URL"
#wget --timestamping "${URL}.sha1"
#shasum -a 1 --binary --check "${FILENAME}.sha1"
shasum -a 256 --binary "$FILENAME"