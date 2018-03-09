# homebrew-download-apache-tomcat

## Summary

Downloads Apache Tomcat installation .tgz files (full docs), but does not start Tomcat (so that it can be used for development purposes).

The files will by default be installed to: `/usr/local/Cellar/download-apache-tomcat@<version>/<version>`

Multiple versions can be installed in parallel (because it is keg-only, and so does not install anything to /usr).

```bash
brew tap pgpx/download-apache-tomcat
brew install download-apache-tomcat@8.0.38
```

## Development

To test this repository locally:

```bash
git add -A && git commit -m "Commit message"
brew untap pgpx/download-apache-tomcat
brew tap pgpx/download-apache-tomcat file://$(pwd)
brew install --debug --verbose download-apache-tomcat@8.0.38
```

To calculate the sha256 checksum of a new Tomcat version:

```bash
./tomcat-sha-256.sh 8.0.38
```

And copy the sha256 value from the last line.

## Credits

Some code copied from <https://github.com/smclernon/homebrew-firefox>