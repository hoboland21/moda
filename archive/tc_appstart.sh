#!/bin/bash

for i in $(curl --user deployer:tcmoda http://rh-stg-01:8081/manager/text/list) 
do 
echo "$i"

done


read -p "Which application: " appname
read -p "What action to perform: " action
echo Performin $action on application $appname
