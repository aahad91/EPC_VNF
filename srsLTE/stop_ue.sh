#!/bin/sh

cp /tmp/ue.log /tngbench_share/
cp /tmp/ue_metrics.csv /tngbench_share/
sleep 1
python ./log_intf_statistics.py /tngbench_share/result.yml
sleep 1
python ./process_iperf3_results.py /tngbench_share/iperf.json /tngbench_share/result.yml
date > /tngbench_share/stop.txt
