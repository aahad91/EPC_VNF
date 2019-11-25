#!/bin/bash
date > /tngbench_share/start.txt
mongod &
./loadimsi.sh
#mongoimport --db open5gs --collection subscribers --file imsi1.json --type json --jsonArray
