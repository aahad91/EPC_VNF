FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        python3-pip \
        python3-setuptools \
        python3-wheel \
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
        iptables \
        iputils-ping \
        ca-certificates \
        netbase \
        pkg-config && \
    apt-get clean
RUN pip3 install meson
WORKDIR /
COPY setup.sh /
COPY start.sh /
RUN chmod +x start.sh
COPY stop.sh /
RUN chmod +x stop.sh
RUN git clone https://github.com/aahad91/open5gs
RUN cd open5gs && meson build && ninja -C build install
COPY conf/open5gs /etc/open5gs
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
CMD /bin/bash
