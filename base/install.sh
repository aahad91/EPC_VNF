#!/bin/sh

chmod +x setup.sh
chmod +x /dev/net/tun
/setup.sh
/usr/bin/open5gs-pcrfd
/usr/bin/open5gs-pgwd
/usr/bin/open5gs-sgwd
/usr/bin/open5gs-hssd
/usr/bin/open5gs-mmed
