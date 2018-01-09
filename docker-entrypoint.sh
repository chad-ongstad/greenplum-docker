#!/bin/bash
sudo /usr/sbin/sshd
#sudo chown gpadmin:gpadmin /etc/hosts
#sudo echo "127.0.0.1     gplum" >> /etc/hosts
if [ ! -d $MASTER_DATA_DIRECTORY ]; then
    echo 'Master does not exist. Initializing master from gpinitsystem_reflect.'
    gpssh-exkeys -f hostlist
    gpinitsystem -a  -c gpinitsys
else
    echo 'Master exists. Restarting gpdb.'
    gpstart -a
fi
exec "$@"
