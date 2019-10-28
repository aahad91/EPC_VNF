FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        python3-pip \
        python3-setuptools \
        ninja-build \
        build-essential \
        flex \
        bison \
        git \
        libsctp-dev \
        libgnutls28-dev \
        libgcrypt-dev \
        libssl-dev \
        libidn11-dev \
        libmongoc-dev \
        libbson-dev \
        libyaml-dev \
        iproute2 \
        ca-certificates \
        netbase \
        pkg-config && \
    apt-get clean
#RUN python3 -m pip install meson
RUN pip3 install meson
WORKDIR /
COPY setup.sh /
COPY install.sh /
RUN chmod +x install.sh
RUN git clone https://github.com/open5gs/open5gs
#ADD https://api.github.com/repos/open5gs/open5gs/git/refs/heads/master /open5gs-ver.json
RUN cd open5gs && meson build && ninja -C build install

#COPY freeDiameter /etc/open5gs/freeDiameter
#COPY open5gs.conf /etc/open5gs/
#COPY run_epc.sh /etc/open5gs/
#COPY run_webui.sh /etc/open5gs/
