#!/bin/bash
set -ev
#-------------------------------------------------------------------------------
# Launch tests
#-------------------------------------------------------------------------------
cd $HOME/$JHIPSTER
if [ $JHIPSTER != "app-gradle" ]; then
  mvn test -DskipTests=true
  ls -al target/asciidoc/ target/asciidoc/html5/ target/asciidoc/pdf/
else
  ./gradlew asciidoctor
  ls -l build/asciidoc/ build/asciidoc/html5/ build/asciidoc/pdf/
fi
