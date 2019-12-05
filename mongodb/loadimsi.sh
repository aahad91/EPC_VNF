#!/bin/bash
mongoimport --host 192.168.24.50:27017 --db open5gs --collection subscribers --file imsi1.json --type json --jsonArray
