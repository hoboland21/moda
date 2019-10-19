#!/bin/bash
# **********************************************
# Remove all old Log files
# **********************************************
#
for ((i=1;i<=8;i++)); do
    LOGDIR=/opt/tomcat-base-0${i}/logs
    echo "Removing old logs from: $LOGDIR"
    rm ${LOGDIR}/*
    sleep 2
done
