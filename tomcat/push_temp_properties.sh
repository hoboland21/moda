#!/bin/bash
# *************************************************
# Push Temporary properties to Tomcat Instances
#
# by: Jeff.Schenk@modahealth.com
#
# *************************************************
BASE_DIR=/opt
PROPERTIES_SOURCE=${BASE_DIR}/tomcat-home/sbin/temp_stg3_properties


#
# Begin cloning Loop
NUMBER_TO_PUSH=8
for ((i=1;i<=NUMBER_TO_PUSH;i++)); do
    CLONED_BASE=tomcat-base-0${i}
    echo Pushing Temporary Properties to ${BASE_DIR}/${CLONED_BASE}/properties
    cp -p ${PROPERTIES_SOURCE}/* ${BASE_DIR}/${CLONED_BASE}/properties
done

#
# Done.
exit
