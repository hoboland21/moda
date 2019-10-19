#!/bin/bash
# **********************************************
# PID Check
# **********************************************
#
CATALINA_HOME=/opt/tomcat-home

# Make sure of our UID
WHO=`/bin/whoami`
echo "UID: $WHO"
if [ $WHO != "tcadminx" ] && [ $WHO != "tcadmin" ]; then
     echo "Incorrect UID, should be tcadmin/x, found:  $WHO, exiting...."
     exit 1
fi

# First attempt to start all the tomcat instances
$CATALINA_HOME/sbin/start_all.sh
sleep 5

# Now check that all the tomcat instances are started
for I in {1..8}; do
     PID=`/bin/ps -eaf | /bin/grep tc0$I | /bin/grep '/opt/tomcat-home' | /bin/awk -F' ' '{print $2}'`
     if [ ! $PID ]; then
	STAT="Stopped"
	printf "tc0$I:\t%s\t%s\n" "$PID" "$STAT, exiting...."
	exit 1
     else
	STAT="Running"
	printf "tc0$I:\t%s\t%s\n" "$PID" "$STAT"
     fi
done

exit 0

