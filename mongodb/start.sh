#!/bin/bash
date > /tngbench_share/start.txt
#mongod --bind_ip 192.168.24.50
./startdb.sh &
./loadimsi.sh
#mongoimport --db open5gs --collection subscribers --file imsi1.json --type json --jsonArray
sleep infinity
