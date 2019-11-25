FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y \
    iproute2 \
    net-tools \
    iptables \
    iputils-ping \
    gnupg \
    wget

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
RUN apt-get update && apt-get install -y mongodb-org

WORKDIR /
COPY imsi1.json /
COPY loadimsi.sh /
RUN chmod +x loadimsi.sh
COPY startdb.sh /
RUN chmod +x startdb.sh
COPY start.sh /
RUN chmod +x start.sh
COPY stop.sh /
RUN chmod +x stop.sh
RUN mkdir /tngbench_share
RUN mkdir -p /data/db
EXPOSE 27017
CMD /bin/bash
