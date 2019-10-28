#!/bin/sh

chmod 666 setup.sh
./setup.sh
./usr/bin/open5gs-pcrfd
./usr/bin/open5gs-pgwd
./usr/bin/open5gs-sgwd
./usr/bin/open5gs-hssd
./usr/bin/open5gs-mmed
