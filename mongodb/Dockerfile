FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y \
    mongodb \
    iproute2 \
    net-tools \
    iptables \
    iputils-ping
WORKDIR /
COPY imsi1.json /
COPY start.sh /
RUN chmod +x start.sh
COPY stop.sh /
RUN chmod +x stop.sh

CMD /bin/bash
