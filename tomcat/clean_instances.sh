#!/bin/bash
# *************************************************
# Clean Base Tomcat Instance to Multiple Instances
#
# by: Jeff.Schenk@modahealth.com
#
# *************************************************
BASE_DIR=/opt


#
# Begin cloning Loop
NUMBER_TO_CLEAN=8
for ((i=1;i<=NUMBER_TO_CLEAN;i++)); do
    CLONED_BASE=tomcat-base-0${i}
    #
    # Determine if the Cloned Base exists already or not,
    # if exists skip the clone, if create the clone...
    if [ -d "${BASE_DIR}/${CLONED_BASE}" ]; then
        echo Removing Cloned Instance $CLONED_BASE
	rm -r "${BASE_DIR}/${CLONED_BASE}"
    fi

done

#
# Done.
exit
