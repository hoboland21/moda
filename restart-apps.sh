#!/bin/bash

DEFAULT_FILE="default.txt"
PARAMS=""
ENV=$1

#==================================
function read-line {
    IFS=':' 
    read -ra ADDR <<< "$line" 
    TC=${ADDR[0]}
    APPLICATION=${ADDR[1]}
    TIMER=${ADDR[2]}
    IFS=' ' 
}
#==================================
function execute-line {
    curl --user deployer:tcmoda http://rh-$ENV:808$TC/manager/text/stop?path=/$APPLICATION   
    sleep $TIMER 
    curl --user deployer:tcmoda http://rh-$ENV:808$TC/manager/text/start?path=/$APPLICATION   
}
#==================================
function main {
    egrep -v '^#|^$'  < $DEFAULT_FILE | 
    { 
        while read line 
        do
            read-line
            execute-line

        done 
    }
}
#==================================
main
