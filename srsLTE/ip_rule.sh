#!/bin/sh
sleep 60
ip r del default via 192.168.50.1 dev eth0
ip r add default via 45.45.0.1 dev tun_srsue
