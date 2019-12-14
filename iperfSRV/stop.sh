#!/bin/sh
sleep 1
python ./log_intf_statistics.py /tngbench_share/result.yml
sleep 1
date > /tngbench_share/stop.txt
