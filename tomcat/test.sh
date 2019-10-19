#!/bin/sh
# -----------------------------------------------------------
#  Tomcat Instance Environment Settings
# -----------------------------------------------------------

#
#  *************************************************************************
#  Moda Tomcat Instance Generation
#  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
#   Instance Name: tcappserver-01
#
#  *************************************************************************

#
# set JRE (Java Runtime Environment)
JRE_HOME=${CATALINA_HOME}/jre
CATALINA_PID=${CATALINA_BASE}/pid/tc.pid
HOSTNAME_SHORT=$(echo -n $HOSTNAME | cut -d'.' -f 1)
ENV_NAME_LC=$(echo -n $HOSTNAME | cut -d'-' -f 2 | awk '{print tolower($0)}')
ENV_NAME_UC=$(echo -n $HOSTNAME | cut -d'-' -f 2 | awk '{print toupper($0)}')
export JRE_HOME CATALINA_PID HOSTNAME_SHORT ENV_NAME_LC ENV_NAME_UC

