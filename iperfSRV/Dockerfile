FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y python python-yaml iperf iperf3 iproute2 net-tools iputils-ping

COPY start.sh /
RUN chmod +x start.sh
COPY stop.sh /
RUN chmod +x stop.sh
COPY log_intf_statistics.py /
RUN mkdir /tngbench_share
CMD /bin/bash
