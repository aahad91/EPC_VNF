#!/bin/sh

chmod +x setup.sh
chmod +x /dev/net/tun
/setup.sh
/usr/bin/open5gs-pcrfd -D; /usr/bin/open5gs-pgwd -D; /usr/bin/open5gs-sgwd -D; /usr/bin/open5gs-hssd -D; /usr/bin/open5gs-mmed
