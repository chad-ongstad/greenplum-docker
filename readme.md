# greenplum-docker
Docker for greenplum (5.3.0) database.

## Build
docker build -t ubuntu-gpdb .

## Run

docker run -d -p 25432:5432 --hostname=gplum  --name reflect-gpdb ubuntu-gpdb

Connect to your host on port 25432 user/pass is gpadmin/gpadmin.

### hostlist
This file contains the names of the hosts to connect to. By default there is one host 'gplum'.

###  gpinitsys
Configuration file for setting up the greenplum cluster.


