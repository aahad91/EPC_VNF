FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    cmake \
    libuhd-dev \
    uhd-host \
    libboost-program-options-dev \
    libvolk1-dev \
    libfftw3-dev \
    libmbedtls-dev \
    libsctp-dev \
    libconfig++-dev \
    curl \
    iputils-ping \
    unzip \
    build-essential \
    git \
    ca-certificates \
    iproute2 \
    net-tools \
    iperf \
    iperf3 \
    traceroute

WORKDIR /root

RUN git clone https://github.com/aahad91/srsLTE.git && cd srsLTE && git checkout faux_rf
RUN mkdir -p /root/srsLTE/build
WORKDIR /root/srsLTE/build
RUN cmake ../
RUN make -j `nproc` install
RUN ldconfig

WORKDIR /root
RUN mkdir /config

# eNB specific files
COPY enb.conf.fauxrf /config/enb.conf.fauxrf
#RUN cp /root/srsLTE/srsenb/enb.conf.fauxrf.example /config/enb.conf.fauxrf
RUN cp /root/srsLTE/srsenb/drb.conf.example /config/drb.conf
RUN cp /root/srsLTE/srsenb/enb.conf.example /config/enb.conf
RUN cp /root/srsLTE/srsenb/rr.conf.example /config/rr.conf
RUN cp /root/srsLTE/srsenb/sib.conf.example /config/sib.conf
RUN cp /root/srsLTE/srsenb/sib.conf.mbsfn.example /config/sib.mbsfn.conf

# UE specific files
COPY ue.conf.fauxrf /config/ue.conf.fauxrf

# patch to prevent overriding OPC/OP
RUN sed -i s,"opc  = 63BFA50EE6523365FF14C1F45F88737D","#opc  = 63BFA50EE6523365FF14C1F45F88737D",g /config/ue.conf.fauxrf

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY start_enb.sh /root
RUN chmod +x start_enb.sh
COPY stop_enb.sh /root
RUN chmod +x stop_enb.sh
COPY run_ue.sh /root
RUN chmod +x run_ue.sh
COPY ip_rule.sh /root
RUN chmod +x ip_rule.sh
COPY start_ue.sh /root
RUN chmod +x start_ue.sh
COPY stop_ue.sh /root
RUN chmod +x stop_ue.sh

ENTRYPOINT [ "stdbuf", "-o", "L" ]
CMD /bin/bash
