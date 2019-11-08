FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y iperf iperf3 iproute2 net-tools iputils-ping

COPY start_iperf.sh /
RUN chmod +x start_iperf.sh
