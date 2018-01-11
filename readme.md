# greenplum-docker
Docker for greenplum (5.3.0) database.

## Build
docker build -t ubuntu-gpdb .

## Single Node Docker

From the command line execute the following command:
docker run -it -p 5432:5432 --hostname=db_master_1  --name reflect-gpdb ubuntu-gpdb bash

Connect to your host on port 5432 user/pass is gpadmin/dataroad


## Multi Node Docker-Compose
From the command line execute the following command: docker-compose up

You can connect to your host using PGADMIN on port 5432 user/pass is gpadmin/dataroad



### singlehost
This file contains the name of the hosts to connect to. By default there is one host 'db_master_1'.

### multihost
This file contains the name of the segments that the master connects to. This is used when running a multi-node cluster  and has 3 segments in it.

###  gpinitsys
Configuration file for setting up the greenplum cluster.


##Questions?

chad@dataroadtech.com


