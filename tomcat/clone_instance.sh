#!/bin/bash
# *************************************************
# Clone Base Tomcat Instance to Multiple Instances
#
# It is assumed that the CLONED_ZERO directory
# has been updated with variable replacement
# patterns for ports to be updated as needed.
# 
#
# by: Jeff.Schenk@modahealth.com
#
# *************************************************
BASE_DIR=/opt
CLONED_ZERO=tomcat-base-00
SBIN=${BASE_DIR}/tomcat-home/sbin
HOSTNAME_SHORT=$(echo -n $HOSTNAME | cut -d'.' -f 1)
CLUSTER_MEMBER=$(echo -n $HOSTNAME | cut -d'.' -f 1 | cut -d'-' -f 3)
ENV_NAME_LC=$(echo -n $HOSTNAME | cut -d'-' -f 2 | awk '{print tolower($0)}')
ENV_NAME_UC=$(echo -n $HOSTNAME | cut -d'-' -f 2 | awk '{print toupper($0)}')
export HOSTNAME_SHORT ENV_NAME_LC ENV_NAME_UC

if [ ${ENV_NAME_UC} = "PRD" ]; then
	SERVICE_USER="tcadmin"
else
	SERVICE_USER="tcadminx"
fi

chown -R ${SERVICE_USER}:10000 /opt/tomcat-home /opt/tomcat-base-00
#rm -f ${BASE_DIR}/tomcat-home/properties
#rm -f ${BASE_DIR}/tomcat-home/appData
#su ${SERVICE_USER} "-c ln -sf /deployment/${ENV_NAME_LC}/prog/TomcatBuildSystem/properties/ ${BASE_DIR}/tomcat-home/properties"
#su ${SERVICE_USER} "-c ln -sf /deployment/${ENV_NAME_LC}/prog/SpeedERates/SpeedERatesWeb/etc/test/ ${BASE_DIR}/tomcat-home/appData"

#
# Begin cloning Loop, max is 9, a single digit, otherwise ports would need adjustment.
NUMBER_TO_CLONE=8
for ((i=1;i<=NUMBER_TO_CLONE;i++)); do
    CLONED_BASE=tomcat-base-0${i}
    #
    # Determine if the Cloned Base exists already or not,
    # if exists skip the clone, if create the clone...
    if [ -d "${BASE_DIR}/${CLONED_BASE}" ]; then
        echo Skipping Instance $CLONED_BASE
        continue # Skip existing Directories... 
    fi
    echo Cloning Instance $CLONED_BASE

    #
    # Establish Ports for Clone
    HTTP_PORT=808${i}
    #HTTPS_PORT=844${i}
    HTTPS_PORT=443
    SHUTDOWN_PORT=805${i}
    AJP_PORT=809${i}
    JMX_PORT=900${i}
    SNMP_PORT=901${i}
    RMI_PORT_1=902${i}
    RMI_PORT_2=903${i}
    DEBUG_PORT=904${i}
    INSTANCE_NAME="BASE ${i}"
    INSTANCE_NUMBER="${i}"

    #
    # Copy the Clone
    cp -pr "${BASE_DIR}/${CLONED_ZERO}" "${BASE_DIR}/${CLONED_BASE}"

    #
    # Create the logs directory for the instance
    if [ ${ENV_NAME_UC} = "PRD" ] | [ ${ENV_NAME_UC} = "MO3" ]; then    
        su ${SERVICE_USER} "-c ln -sf /app/TCLogs/${ENV_NAME_UC}-${CLUSTER_MEMBER}/tc0${i} ${BASE_DIR}/${CLONED_BASE}/logs"
    else
        su ${SERVICE_USER} "-c ln -sf /app/TCLogs/${ENV_NAME_UC}/tc0${i} ${BASE_DIR}/${CLONED_BASE}/logs"
    fi

    #
    # Replace all applicable Ports for this instance
    sed -i -- "s/@HTTP_PORT@/${HTTP_PORT}/g" ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -- "s/@HTTPS_PORT@/${HTTPS_PORT}/g" ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -- "s/@SHUTDOWN_PORT@/${SHUTDOWN_PORT}/g" ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -- "s/@AJP_PORT@/${AJP_PORT}/g" ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -- "s/@JMX_PORT@/${JMX_PORT}/g" ${BASE_DIR}/${CLONED_BASE}/bin/setenv.sh
    sed -i -- "s/@SNMP_PORT@/${SNMP_PORT}/g" ${BASE_DIR}/${CLONED_BASE}/bin/setenv.sh
    sed -i -- "s/@RMI_PORT_1@/${RMI_PORT_1}/g" ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -- "s/@RMI_PORT_2@/${RMI_PORT_2}/g" ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -- "s/@DEBUG_PORT@/${DEBUG_PORT}/g" ${BASE_DIR}/${CLONED_BASE}/bin/setenv.sh
    sed -i -- "s/@INSTANCE_NAME@/${INSTANCE_NAME}/g" ${BASE_DIR}/${CLONED_BASE}/bin/setenv.sh
    sed -i -- "s/@INSTANCE_NAME@/${INSTANCE_NAME}/g" ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -- "s/@INSTANCE_NUMBER@/${INSTANCE_NUMBER}/g" ${BASE_DIR}/${CLONED_BASE}/bin/setenv.sh
    sed -i -- "s/@INSTANCE_NUMBER@/${INSTANCE_NUMBER}/g" ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -e "/@DB_RESOURCES@/ r ${SBIN}/resources/${ENV_NAME_LC}/tc0${INSTANCE_NUMBER}_resources.xml" -e s/@DB_RESOURCES@// ${BASE_DIR}/${CLONED_BASE}/conf/server.xml
    sed -i -e "/@DB_LINKS@/ r ${SBIN}/resourceLinks/${ENV_NAME_LC}/tc0${INSTANCE_NUMBER}_resourceLinks.xml" -e s/@DB_LINKS@// ${BASE_DIR}/${CLONED_BASE}/conf/context.xml
    sed -i -- "s/@INSTANCE_NUMBER@/${INSTANCE_NUMBER}/g" ${BASE_DIR}/${CLONED_BASE}/bin/managecat-restart-agent.sh

done

#
# Done.
exit
