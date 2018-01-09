#!/bin/bash


pid=$(ps aux | grep [g]pmaster | grep -v grep | awk '{print $2}')
echo $pid


master_running () {
if [ -z "$pid" ];
    then echo "Process not running"
         return 1
    else echo "Process Running"
         return 0
fi;
}

while :
do
    sleep 1
    master_running
    if [ $? -eq 1 ];
    then 
        echo "greenplum master is no longer running"
        break
    fi
    
done
