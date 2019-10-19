#!/bin/bash
# **********************************************
# Start all
# **********************************************
#
CATALINA_HOME=/opt/tomcat-home

${CATALINA_HOME}/sbin/tc06.sh start
echo -n "Pausing 720 seconds for tc06 start-up."
for ((i=1;i<=720;i++)); do
    echo -n "."
    sleep 1
done
echo

for ((i=1;i<=8;i++)); do
    if [ ${i} -ne 6 ] && [ ${i} -ne 3 ]
    then
        ${CATALINA_HOME}/sbin/tc0${i}.sh start
        sleep 3
    fi
done

${CATALINA_HOME}/sbin/tc03.sh start

