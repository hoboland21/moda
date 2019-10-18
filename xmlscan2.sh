#!/bin/bash
ENV=$1
BASEDIR ="/deployment/xmlscan" 
if ! [ -d $BASEDIR] 
then
	mkdir $BASEDIR
fi	
if ! [ -d $BASEDIR'/'$ENV ] 
then
	mkdir $BASEDIR'/'$ENV
fi	

cp /opt/tomcat-base-01/conf/server.xml $BASEDIR'/'$ENV'/server.tc01.xml'
cp /opt/tomcat-base-02/conf/server.xml $BASEDIR'/'$ENV'/server.tc02.xml'
cp /opt/tomcat-base-03/conf/server.xml $BASEDIR'/'$ENV'/server.tc03.xml'
cp /opt/tomcat-base-04/conf/server.xml $BASEDIR'/'$ENV'/server.tc04.xml'
cp /opt/tomcat-base-05/conf/server.xml $BASEDIR'/'$ENV'/server.tc05.xml'
cp /opt/tomcat-base-06/conf/server.xml $BASEDIR'/'$ENV'/server.tc06.xml'
cp /opt/tomcat-base-07/conf/server.xml $BASEDIR'/'$ENV'/server.tc07.xml'
cp /opt/tomcat-base-08/conf/server.xml $BASEDIR'/'$ENV'/server.tc08.xml'

