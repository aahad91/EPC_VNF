#!/bin/sh
sleep 180
#ip r del default via 192.168.50.1 dev eth0
route del default
ip r add default via 45.45.0.2 dev tun_srsue
iperf -c 192.168.30.10
