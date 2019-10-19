#!/bin/bash
# **********************************************
# Manage Tomcat Instance Four JVM
# **********************************************
#
CATALINA_BASE=/opt/tomcat-base-04
#
CATALINA_HOME=/opt/tomcat-home
#
JRE_HOME=${CATALINA_HOME}/jre
export CATALINA_HOME CATALINA_BASE JRE_HOME
#
${CATALINA_HOME}/bin/catalina.sh ${1}
