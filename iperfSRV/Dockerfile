FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y iperf iperf3 iproute2 net-tools iputils-ping

CMD ["iperf", "-s"] 
