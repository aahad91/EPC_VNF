#!/bin/sh
sleep 20
srsue /config/ue.conf.fauxrf --usim.imsi=001010000000001 --usim.k=c8eba87c1074edd06885cb0486718341 --usim.algo=milenage --usim.opc=17b6c0157895bcaa1efc1cef55033f5f --nas.apn=internet &
sleep 240
echo "UE VNF started" >> /tngbench_share/start.txt
ip r add 192.168.30.0/24 via 45.45.0.2
echo "ip rule added" >> /tngbench_share/start.txt
iperf3 -c 192.168.30.10 -w 32M -J >> /tngbench_share/iperf.json
echo "iperf executed" >> /tngbench_share/start.txt
#iperf output format
#timestamp,source_address,source_port,destination_address,destination_port,interval,transferred_bytes,bits_per_second
