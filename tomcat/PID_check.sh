#!/bin/bash
# **********************************************
# PID Check
# **********************************************
#
CATALINA_HOME=/opt/tomcat-home

for I in {1..8}; do
     STAT="Running"
     PID=`/bin/ps -eaf | /bin/grep tc0$I | /bin/grep '/opt/tomcat-home' | /bin/awk -F' ' '{print $2}'`
     if [ ! $PID ]; then
	STAT="Stopped"
     fi
     printf "tc0$I:\t%s\t%s\n" "$PID" "$STAT"
done

