#!/bin/bash
# **********************************************
# PID_stop_all.sh
# **********************************************
#
CATALINA_HOME=/opt/tomcat-home

# Make sure of our UID
WHO=`/bin/whoami`
echo "UID: $WHO"
if [ $WHO != "tcadminx" ] && [ $WHO != "tcadmin" ] && [ $WHO != "root" ]; then
     echo "Incorrect UID, should be tcadmin/x, found:  $WHO, exiting...."
     exit 1
fi

# First attempt to stop all the tomcat instances
$CATALINA_HOME/sbin/stop_all.sh
sleep 5

# Now check that all the tomcat instances are stopped (if not kill them)
for I in {1..8}; do
     PID=`/bin/ps -eaf | /bin/grep tc0$I | /bin/grep '/opt/tomcat-home' | /bin/awk -F' ' '{print $2}'`
     if [ $PID ]; then
	STAT="Running"
	printf "tc0$I:\t%s\t%s\n" "$PID" "$STAT, kill attemp 2...."
	/bin/kill -9 $PID
	sleep 5;
	PID=`/bin/ps -eaf | /bin/grep tc0$I | /bin/grep '/opt/tomcat-home' | /bin/awk -F' ' '{print $2}'`
	if [ $PID ]; then
	    printf "tc0$I:\t%s\t%s\n" "$PID" "$STAT, kill attemp 3...."
	    /bin/kill -9 $PID
	    sleep 5;
	    PID=`/bin/ps -eaf | /bin/grep tc0$I | /bin/grep '/opt/tomcat-home' | /bin/awk -F' ' '{print $2}'`
	    if [ $PID ]; then
	    	printf "tc0$I:\t%s\t%s\n" "$PID" "$STAT, kill attemp 3 failed, exiting...."
		exit 1
	    fi
	fi
	printf "tc0$I:\t%s\t%s\n" "$PID" "Stopped"
     else
	STAT="Stopped"
	printf "tc0$I:\t%s\t%s\n" "$PID" "$STAT"
     fi
done

exit 0

