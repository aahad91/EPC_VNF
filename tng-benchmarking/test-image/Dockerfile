FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y  net-tools iproute2 inetutils-ping iptables traceroute iperf vim curl
RUN mkdir /tngbench_share
COPY start.sh /
RUN chmod +x start.sh
COPY stop.sh /
RUN chmod +x stop.sh
CMD /bin/bash
