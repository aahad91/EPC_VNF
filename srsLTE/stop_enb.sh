#!/bin/sh

cp /tmp/enb.log /tngbench_share/
cp /tmp/enb_metrics.csv /tngbench_share/
sleep 1
python ./log_intf_statistics.py /tngbench_share/result.yml
sleep 1
date > /tngbench_share/stop.txt
