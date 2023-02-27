#!/usr/bin/env bash

case "$1" in
  "frames")
    java -jar /opt/SaxonHE11-4J/saxon-he-11.4.jar \
      -s:"$2" \
      -xsl:/opt/junit-frames-saxon.xsl \
      output.dir="$(pwd)/$3"
    ;;
  "no-frames")
    java -jar /opt/SaxonHE11-4J/saxon-he-11.4.jar \
      -s:"$2" \
      -xsl:/opt/junit-noframes-saxon.xsl \
      -o:"$3"
    ;;
  *)
    echo "Usage: $0 <frames|no-frames> [input XML file] [output HTML file or directory]"
    exit 1
    ;;
esac
