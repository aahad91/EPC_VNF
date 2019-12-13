#!/bin/sh
date > /tngbench_share/start.txt
sysctl net.ipv6.conf.all.disable_ipv6=0
sysctl net.ipv4.conf.all.forwarding=1
sleep 20
./run_ue.sh &
echo "UE VNF started"
