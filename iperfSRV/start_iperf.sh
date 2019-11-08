#!/bin/sh

ip r add 45.45.0.0/24 via 192.168.30.20
iperf -s
