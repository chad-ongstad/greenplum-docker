#!/bin/bash
sudo /usr/sbin/sshd
#sudo chown gpadmin:gpadmin /etc/hosts
#sudo echo "127.0.0.1     gplum" >> /etc/hosts
if [ ! -d $MASTER_DATA_DIRECTORY ]; then
    echo 'Master does not exist. Initializing master from gpinitsystem_reflect.'
    gpssh-exkeys -f hostlist
    gpinitsystem -a  -c gpinitsys
    # receive connection from anywhere.. This should be changed!!
    echo "host all all 0.0.0.0/0 md5" >>/var/lib/gpdb/data/gpmaster/gpsne-1/pg_hba.conf

    # set the default password to gpadmin when the server is first initialized
    psql -U gpadmin  -c "alter user gpadmin with password 'gpadmin';"
    gpstop -u
else
    echo 'Master exists. Restarting gpdb.'
    gpstart -a
fi

exec "$@"
