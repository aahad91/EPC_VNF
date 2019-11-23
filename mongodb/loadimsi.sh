#!/bin/bash
mongoimport --db open5gs --collection subscribers --file imsi1.json --type json --jsonArray
