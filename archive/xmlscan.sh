#!usr/bin/bash
ENV=$1
cp /opt/tomcat-base-01/conf/server.xml '/u/zzappadmin06/all/tc01/'$ENV'-server.xml'
cp /opt/tomcat-base-02/conf/server.xml '/u/zzappadmin06/all/tc02/'$ENV'-server.xml'
cp /opt/tomcat-base-03/conf/server.xml '/u/zzappadmin06/all/tc03/'$ENV'-server.xml'
cp /opt/tomcat-base-04/conf/server.xml '/u/zzappadmin06/all/tc04/'$ENV'-server.xml'
cp /opt/tomcat-base-05/conf/server.xml '/u/zzappadmin06/all/tc05/'$ENV'-server.xml'
cp /opt/tomcat-base-06/conf/server.xml '/u/zzappadmin06/all/tc06/'$ENV'-server.xml'
cp /opt/tomcat-base-07/conf/server.xml '/u/zzappadmin06/all/tc07/'$ENV'-server.xml'
cp /opt/tomcat-base-08/conf/server.xml '/u/zzappadmin06/all/tc08/'$ENV'-server.xml'

