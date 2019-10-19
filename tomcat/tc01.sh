#!/bin/bash
# **********************************************
# Manage Tomcat Instance One JVM
# **********************************************
#
CATALINA_BASE=/opt/tomcat-base-01
#
CATALINA_HOME=/opt/tomcat-home
#
JRE_HOME=${CATALINA_HOME}/jre
export CATALINA_HOME CATALINA_BASE JRE_HOME
#
${CATALINA_HOME}/bin/catalina.sh ${1}
