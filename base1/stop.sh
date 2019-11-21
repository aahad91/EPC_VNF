#!/bin/sh

cp /var/log/open5gs/hss.log /tngbench_share/
cp /var/log/open5gs/mme.log /tngbench_share/
cp /var/log/open5gs/sgw.log /tngbench_share/
cp /var/log/open5gs/pcrf.log /tngbench_share/
date > /tngbench_share/stop.txt
