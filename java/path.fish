# Environment Variables

set -gx GROOVY_HOME /usr/local/opt/groovy/libexec

set -gx JAVA_11_HOME (/usr/libexec/java_home -v11)
set -gx JAVA_14_HOME (/usr/libexec/java_home -v14)

set -gx JAVA_HOME $JAVA_11_HOME

. ~/.asdf/plugins/java/set-java-home.fish
