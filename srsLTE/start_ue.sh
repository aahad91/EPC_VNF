#!/bin/sh
date > /tngbench_share/start.txt
./ip_rule.sh &
./run_ue.sh
echo "UE VNF started"
