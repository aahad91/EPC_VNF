#!/bin/bash
mongod --bind_ip_all --port 27017 --fork --logpath /var/log/mongodb.log
