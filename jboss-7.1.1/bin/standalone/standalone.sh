#!/bin/sh
###
JAVA_OPTS="$JAVA_OPTS -Xmx256m"
JBOSS_CLASSPATH="$JBOSS_CLASSPATH:"
JAVA_OPTS="$JAVA_OPTS -XX:+UseCompressedOops"
DISPLAY=:0
JAVA_HOME="/opt/webapps/jboss-test/jre1.7.0_80"
JDK_TOOLS="$JAVA_HOME/lib/tools.jar"
export DISPLAY
export PATH
export JAVA_OPTS
export JBOSS_CLASSPATH
export JAVA_HOME
export JDK_TOOLS
cd /opt/webapps/jboss-7.1.1/standalone
rm -Rf /opt/webapps/jboss-7.1.1/standalone/log
rm -Rf /opt/webapps/jboss-7.1.1/standalone/work
rm -Rf /opt/webapps/jboss-7.1.1/standalone/tmp
sleep 10

/opt/webapps/jboss-7.1.1/bin/standalone.sh --server-config=standalone.xml -Djboss.server.base.dir=/opt/webapps/jboss-7.1.1/standalone -b 0.0.0.0 -bmanagment 0.0.0.0 > /dev/null &
