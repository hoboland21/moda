#!/bin/bash

DEFAULT_FILE="default.txt"
PARAMS=""
#==================================
function run-line {
    IFS=':' 
    read -ra ADDR <<< "$line" 
    echo ${ADDR[@]}
 





 #   for i in ${ADDR[@]}; 
 #       do 
 #           echo $i 

 #   done
    IFS=' ' 
}
#==================================
function main {
    egrep -v '^#|^$'  < $DEFAULT_FILE | 
    { 
        while read line 
        do
            read-line
        done 
    }
}
#==================================
function dbug {

        echo DEFAULT_FILE = $DEFAULT_FILE
        echo APPSTART = $APPSTART
        echo APPNAME =$APPNAME
        echo TC = $TC
        echo ENVNAME = $ENVNAME
        echo APPWAIT = $APPWAIT
        echo  Default File Contents
        main
}
#==================================
function load_defaults {
    if [ -f $DEFAULT_FILE ] 
    then
    echo File OK 
    
    fi
}
#==================================
# Decision Tree
#==================================

while (( "$#" )); do
    case "$1" in
        -f|--file) DEFAULT_FILE=$2; load_defaults; shift 2  ;;

        --start) APPSTART=1;  shift 1;  ;;

        --stop)  APPSTART=0;  shift 1;  ;;

        -a ) APPNAME=$2;  shift 2;   ;;
        
        -t )  TC=$2;      shift 2;    ;;

        -e ) ENVNAME=$2; shift 2;     ;;

        -w ) APPWAIT=$2;  shift 2;    ;;

        -v )     debug;   shift  ;;


        -?|--help)
        echo "
            -s  --start    Start Application(s)
            -x  --stop     Stop Application(s) (req -i -e -a)
            -a  --app      Application Name
            -i  --tc0      Instance number no leading 0 TC0x
            -e  --env      Environment stg-01, stg2-01  
            -w  --wait     Wait time delay after start in seconds
            -p  --print    Print out list of applications (req -i -e -a)

        "     
        shift 1
        ;;



        --)  shift;  break  ;;
 
        -*|--*=) # unsupported flags
        echo "Error: Unsupported flag $1" >&2
        return 1
        ;;
 
        *) # preserve positional arguments
        PARAMS="$PARAMS $1"
        shift
        ;;
    esac
done
#==================================
#==================================

