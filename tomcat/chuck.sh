#!/bin/sh

if [ $# -ne 1 ]; then
    echo usage: $0 \<two digit instance number\> e.g. 04 
    exit 1
fi

set -x   # Echo on

instance=$1

cd /opt/tomcat-base-$instance/webapps/

mv ./console ./console.orig

mv ./console.war ./console.war.bkp_20180913

cp /opt/tomcat-base-01/webapps/console.war .

ls -l

cd /opt/tomcat-home/sbin

./tc$instance.sh start

echo "done"
