#!/bin/bash
# *******************************************************
# ManageCat Restart Agent for Tomcat Instance Seven JVM
# *******************************************************
#
CATALINA_BASE=/opt/tomcat-base-07
#
CATALINA_HOME=/opt/tomcat-home
#
JRE_HOME=${CATALINA_HOME}/jre
export CATALINA_HOME CATALINA_BASE JRE_HOME
#
${CATALINA_BASE}/bin/managecat-restart-agent.sh 1> ${CATALINA_BASE}/logs/tc07_managecat_restart_agent.log 2>&1 &
