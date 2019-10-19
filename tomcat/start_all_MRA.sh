#!/bin/bash
# **********************************************
# Start all ManageCat Restart Agents
#
# Note: To Stop these processes, you will need
# to issue a kill.
# **********************************************
#
CATALINA_HOME=/opt/tomcat-home

for ((i=1;i<=8;i++)); do
    ${CATALINA_HOME}/sbin/tc0${i}_MRA.sh
    sleep 1 
done
