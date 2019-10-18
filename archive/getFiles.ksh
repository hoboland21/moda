#!/bin/ksh
ENV=$1
cp /opt/tomcat-base-01/conf/server.xml '/deployment/'$ENV'/prog/deployment/tomcat/server.tc01.xml'
cp /opt/tomcat-base-02/conf/server.xml '/deployment/'$ENV'/prog/deployment/tomcat/server.tc02.xml'
cp /opt/tomcat-base-03/conf/server.xml '/deployment/'$ENV'/prog/deployment/tomcat/server.tc03.xml'
cp /opt/tomcat-base-04/conf/server.xml '/deployment/'$ENV'/prog/deployment/tomcat/server.tc04.xml'
cp /opt/tomcat-base-05/conf/server.xml '/deployment/'$ENV'/prog/deployment/tomcat/server.tc05.xml'
cp /opt/tomcat-base-06/conf/server.xml '/deployment/'$ENV'/prog/deployment/tomcat/server.tc06.xml'
cp /opt/tomcat-base-07/conf/server.xml '/deployment/'$ENV'/prog/deployment/tomcat/server.tc07.xml'
cp /opt/tomcat-base-08/conf/server.xml '/deployment/'$ENV'/prog/deployment/tomcat/server.tc08.xml'

cp /opt/tomcat-base-01/webapps/manager/META-INF/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc01.xml'
cp /opt/tomcat-base-02/webapps/manager/META-INF/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc02.xml'
cp /opt/tomcat-base-03/webapps/manager/META-INF/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc03.xml'
cp /opt/tomcat-base-04/webapps/manager/META-INF/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc04.xml'
cp /opt/tomcat-base-05/webapps/manager/META-INF/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc05.xml'
cp /opt/tomcat-base-06/webapps/manager/META-INF/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc06.xml'
cp /opt/tomcat-base-07/webapps/manager/META-INF/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc07.xml'
cp /opt/tomcat-base-08/webapps/manager/META-INF/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/manager.context.tc08.xml'


cp /opt/tomcat-base-01/conf/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/context.tc01.xml'
cp /opt/tomcat-base-02/conf/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/context.tc02.xml'
cp /opt/tomcat-base-03/conf/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/context.tc03.xml'
cp /opt/tomcat-base-04/conf/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/context.tc04.xml'
cp /opt/tomcat-base-05/conf/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/context.tc05.xml'
cp /opt/tomcat-base-06/conf/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/context.tc06.xml'
cp /opt/tomcat-base-07/conf/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/context.tc07.xml'
cp /opt/tomcat-base-08/conf/context.xml '/deployment/'$ENV'/prog/deployment/tomcat/context.tc08.xml'


cp /opt/tomcat-base-01/conf/catalina.properties '/deployment/'$ENV'/prog/deployment/tomcat/catalina.tc01.properties'
cp /opt/tomcat-base-02/conf/catalina.properties '/deployment/'$ENV'/prog/deployment/tomcat/catalina.tc02.properties'
cp /opt/tomcat-base-03/conf/catalina.properties '/deployment/'$ENV'/prog/deployment/tomcat/catalina.tc03.properties'
cp /opt/tomcat-base-04/conf/catalina.properties '/deployment/'$ENV'/prog/deployment/tomcat/catalina.tc04.properties'
cp /opt/tomcat-base-05/conf/catalina.properties '/deployment/'$ENV'/prog/deployment/tomcat/catalina.tc05.properties'
cp /opt/tomcat-base-06/conf/catalina.properties '/deployment/'$ENV'/prog/deployment/tomcat/catalina.tc06.properties'
cp /opt/tomcat-base-07/conf/catalina.properties '/deployment/'$ENV'/prog/deployment/tomcat/catalina.tc07.properties'
cp /opt/tomcat-base-08/conf/catalina.properties '/deployment/'$ENV'/prog/deployment/tomcat/catalina.tc08.properties'

cp /opt/tomcat-base-01/bin/setenv.sh '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc01.sh'
cp /opt/tomcat-base-02/bin/setenv.sh '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc02.sh'
cp /opt/tomcat-base-03/bin/setenv.sh '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc03.sh'
cp /opt/tomcat-base-04/bin/setenv.sh '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc04.sh'
cp /opt/tomcat-base-05/bin/setenv.sh '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc05.sh'
cp /opt/tomcat-base-06/bin/setenv.sh '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc06.sh'
cp /opt/tomcat-base-07/bin/setenv.sh '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc07.sh'
cp /opt/tomcat-base-08/bin/setenv.sh '/deployment/'$ENV'/prog/deployment/tomcat/setenv.tc08.sh'

cp /etc/httpd/conf/uriworkermap.properties '/deployment/'$ENV'/prog/deployment/tomcat/uriworkermap.properties'

