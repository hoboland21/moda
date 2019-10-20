#!/bin/bash 
USER=""
PASSWORD=""

while getopts u:p: option
do 
 case $option  in 
 u) USER=$OPTARG;; 
 p) PASSWORD=$OPTARG;; 
 esac 
done 

shift  `expr $OPTIND - 1`


echo "User:"$USER 
echo "Password:"$PASSWORD
echo "OptInd:" $OPTIND