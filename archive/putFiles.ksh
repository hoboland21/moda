#!/bin/ksh
ENV=$1
DTE=$2

echo 'test $ENV AND $DTE'
mv /opt/tomcat-base-01/conf/server.xml '/opt/tomcat-base-01/conf/server.xml.'$DTE'.bkp'
mv /opt/tomcat-base-02/conf/server.xml '/opt/tomcat-base-02/conf/server.xml.'$DTE'.bkp'
mv /opt/tomcat-base-03/conf/server.xml '/opt/tomcat-base-03/conf/server.xml.'$DTE'.bkp'
mv /opt/tomcat-base-04/conf/server.xml '/opt/tomcat-base-04/conf/server.xml.'$DTE'.bkp'
mv /opt/tomcat-base-05/conf/server.xml '/opt/tomcat-base-05/conf/server.xml.'$DTE'.bkp'
mv /opt/tomcat-base-06/conf/server.xml '/opt/tomcat-base-06/conf/server.xml.'$DTE'.bkp'
mv /opt/tomcat-base-07/conf/server.xml '/opt/tomcat-base-07/conf/server.xml.'$DTE'.bkp'
mv /opt/tomcat-base-08/conf/server.xml '/opt/tomcat-base-08/conf/server.xml.'$DTE'.bkp'

mv /opt/tomcat-base-01/conf/context.xml '/opt/tomcat-base-01/conf/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-02/conf/context.xml '/opt/tomcat-base-02/conf/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-03/conf/context.xml '/opt/tomcat-base-03/conf/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-04/conf/context.xml '/opt/tomcat-base-04/conf/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-05/conf/context.xml '/opt/tomcat-base-05/conf/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-06/conf/context.xml '/opt/tomcat-base-06/conf/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-07/conf/context.xml '/opt/tomcat-base-07/conf/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-08/conf/context.xml '/opt/tomcat-base-08/conf/context.xml.'$DTE'.bkp'

mv /opt/tomcat-base-01/bin/setenv.sh '/opt/tomcat-base-01/bin/setenv.sh.'$DTE'.bkp'
mv /opt/tomcat-base-02/bin/setenv.sh '/opt/tomcat-base-02/bin/setenv.sh.'$DTE'.bkp'
mv /opt/tomcat-base-03/bin/setenv.sh '/opt/tomcat-base-03/bin/setenv.sh.'$DTE'.bkp'
mv /opt/tomcat-base-04/bin/setenv.sh '/opt/tomcat-base-04/bin/setenv.sh.'$DTE'.bkp'
mv /opt/tomcat-base-05/bin/setenv.sh '/opt/tomcat-base-05/bin/setenv.sh.'$DTE'.bkp'
mv /opt/tomcat-base-06/bin/setenv.sh '/opt/tomcat-base-06/bin/setenv.sh.'$DTE'.bkp'
mv /opt/tomcat-base-07/bin/setenv.sh '/opt/tomcat-base-07/bin/setenv.sh.'$DTE'.bkp'
mv /opt/tomcat-base-08/bin/setenv.sh '/opt/tomcat-base-08/bin/setenv.sh.'$DTE'.bkp'

mv /opt/tomcat-base-01/webapps/manager/META-INF/context.xml '/opt/tomcat-base-01/webapps/manager/META-INF/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-02/webapps/manager/META-INF/context.xml '/opt/tomcat-base-02/webapps/manager/META-INF/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-03/webapps/manager/META-INF/context.xml '/opt/tomcat-base-03/webapps/manager/META-INF/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-04/webapps/manager/META-INF/context.xml '/opt/tomcat-base-04/webapps/manager/META-INF/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-05/webapps/manager/META-INF/context.xml '/opt/tomcat-base-05/webapps/manager/META-INF/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-06/webapps/manager/META-INF/context.xml '/opt/tomcat-base-06/webapps/manager/META-INF/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-07/webapps/manager/META-INF/context.xml '/opt/tomcat-base-07/webapps/manager/META-INF/context.xml.'$DTE'.bkp'
mv /opt/tomcat-base-08/webapps/manager/META-INF/context.xml '/opt/tomcat-base-08/webapps/manager/META-INF/context.xml.'$DTE'.bkp'

mv /etc/httpd/conf/uriworkermap.properties '/etc/httpd/conf/uriworkermap.properties.'$DTE'.bkp'

cp '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc01.xml' /opt/tomcat-base-01/webapps/manager/META-INF/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc02.xml' /opt/tomcat-base-02/webapps/manager/META-INF/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc03.xml' /opt/tomcat-base-03/webapps/manager/META-INF/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc04.xml' /opt/tomcat-base-04/webapps/manager/META-INF/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc05.xml' /opt/tomcat-base-05/webapps/manager/META-INF/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc06.xml' /opt/tomcat-base-06/webapps/manager/META-INF/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc07.xml' /opt/tomcat-base-07/webapps/manager/META-INF/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc08.xml' /opt/tomcat-base-08/webapps/manager/META-INF/context.xml

cp '/deployment/'$ENV'/prog/deployment/tomcat/context.tc01.xml' /opt/tomcat-base-01/conf/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/context.tc02.xml' /opt/tomcat-base-02/conf/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/context.tc03.xml' /opt/tomcat-base-03/conf/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/context.tc04.xml' /opt/tomcat-base-04/conf/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/context.tc05.xml' /opt/tomcat-base-05/conf/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/context.tc06.xml' /opt/tomcat-base-06/conf/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/context.tc07.xml' /opt/tomcat-base-07/conf/context.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/context.tc08.xml' /opt/tomcat-base-08/conf/context.xml

cp '/deployment/'$ENV'/prog/deployment/tomcat/server.tc01.xml' /opt/tomcat-base-01/conf/server.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/server.tc02.xml' /opt/tomcat-base-02/conf/server.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/server.tc03.xml' /opt/tomcat-base-03/conf/server.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/server.tc04.xml' /opt/tomcat-base-04/conf/server.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/server.tc05.xml' /opt/tomcat-base-05/conf/server.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/server.tc06.xml' /opt/tomcat-base-06/conf/server.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/server.tc07.xml' /opt/tomcat-base-07/conf/server.xml
cp '/deployment/'$ENV'/prog/deployment/tomcat/server.tc08.xml' /opt/tomcat-base-08/conf/server.xml

cp '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc01.sh' /opt/tomcat-base-01/bin/setenv.sh
cp '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc02.sh' /opt/tomcat-base-02/bin/setenv.sh
cp '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc03.sh' /opt/tomcat-base-03/bin/setenv.sh
cp '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc04.sh' /opt/tomcat-base-04/bin/setenv.sh
cp '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc05.sh' /opt/tomcat-base-05/bin/setenv.sh
cp '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc06.sh' /opt/tomcat-base-06/bin/setenv.sh
cp '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc07.sh' /opt/tomcat-base-07/bin/setenv.sh
cp '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc08.sh' /opt/tomcat-base-08/bin/setenv.sh

cp '/deployment/'$ENV'/prog/deployment/tomcat/uriworkermap.properties' /etc/httpd/conf/uriworkermap.properties 

chown root:root /opt/tomcat-base-01/bin/setenv.sh
chown tcadminx:10000 /opt/tomcat-base-02/bin/setenv.sh
chown tcadminx:10000 /opt/tomcat-base-03/bin/setenv.sh
chown tcadminx:10000 /opt/tomcat-base-04/bin/setenv.sh
chown tcadminx:10000 /opt/tomcat-base-05/bin/setenv.sh
chown tcadminx:10000 /opt/tomcat-base-06/bin/setenv.sh
chown tcadminx:10000 /opt/tomcat-base-07/bin/setenv.sh
chown tcadminx:10000 /opt/tomcat-base-08/bin/setenv.sh

chown tcadminx:10000 /opt/tomcat-base-01/conf/context.xml
chown tcadminx:10000 /opt/tomcat-base-02/conf/context.xml
chown tcadminx:10000 /opt/tomcat-base-03/conf/context.xml
chown tcadminx:10000 /opt/tomcat-base-04/conf/context.xml
chown tcadminx:10000 /opt/tomcat-base-05/conf/context.xml
chown tcadminx:10000 /opt/tomcat-base-06/conf/context.xml
chown tcadminx:10000 /opt/tomcat-base-07/conf/context.xml
chown tcadminx:10000 /opt/tomcat-base-08/conf/context.xml

chown tcadminx:10000 /opt/tomcat-base-01/webapps/manager/META-INF/context.xml
chown tcadminx:10000 /opt/tomcat-base-02/webapps/manager/META-INF/context.xml
chown tcadminx:10000 /opt/tomcat-base-03/webapps/manager/META-INF/context.xml
chown tcadminx:10000 /opt/tomcat-base-04/webapps/manager/META-INF/context.xml
chown tcadminx:10000 /opt/tomcat-base-05/webapps/manager/META-INF/context.xml
chown tcadminx:10000 /opt/tomcat-base-06/webapps/manager/META-INF/context.xml
chown tcadminx:10000 /opt/tomcat-base-07/webapps/manager/META-INF/context.xml
chown tcadminx:10000 /opt/tomcat-base-08/webapps/manager/META-INF/context.xml

sudo chown tcadminx:10000  /opt/tomcat-base-01/conf/server.xml
sudo chown tcadminx:10000  /opt/tomcat-base-02/conf/server.xml
sudo chown tcadminx:10000  /opt/tomcat-base-03/conf/server.xml
sudo chown tcadminx:10000  /opt/tomcat-base-04/conf/server.xml
sudo chown tcadminx:10000  /opt/tomcat-base-05/conf/server.xml
sudo chown tcadminx:10000  /opt/tomcat-base-06/conf/server.xml
sudo chown tcadminx:10000  /opt/tomcat-base-07/conf/server.xml
sudo chown tcadminx:10000  /opt/tomcat-base-08/conf/server.xml

chown tcadminx:10000 /etc/httpd/conf/uriworkermap.properties 
