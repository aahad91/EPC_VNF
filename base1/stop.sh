#!/bin/sh

cp /var/log/open5gs/hss.log /tngbench_share/
cp /var/log/open5gs/mme.log /tngbench_share/
cp /var/log/open5gs/sgw.log /tngbench_share/
cp /var/log/open5gs/pcrf.log /tngbench_share/
sleep 1
python ./log_intf_statistics.py /tngbench_share/result.yml
sleep 1
date > /tngbench_share/stop.txt
