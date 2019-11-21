#!/bin/sh
date > /tngbench_share/start.txt
chmod +x setup.sh
chmod +x /dev/net/tun
/setup.sh
#iptables -t nat -A POSTROUTING -s 45.45.0.0/16 ! -o ogstun -j MASQUERADE
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -I INPUT -i ogstun -j ACCEPT
/usr/bin/open5gs-pcrfd -D; /usr/bin/open5gs-pgwd -D; /usr/bin/open5gs-sgwd -D; /usr/bin/open5gs-hssd -D; /usr/bin/open5gs-mmed

echo "EPC VNF started"
