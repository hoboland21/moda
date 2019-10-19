#!/bin/bash
# **********************************************
# Start all
# **********************************************
#
CATALINA_HOME=/opt/tomcat-home

for ((i=1;i<=8;i++)); do
    ${CATALINA_HOME}/sbin/tc0${i}.sh stop
    sleep 2
done
