FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y curl npm
RUN set -e; \
    cd /usr/src; \
    rm -rf ./open5gs; \
    curl -SLO "https://github.com/open5gs/open5gs/archive/v1.0.0.tar.gz"; \
    tar -xvf v1.0.0.tar.gz; \
    mv ./open5gs-1.0.0/ ./open5gs;

WORKDIR /usr/src/open5gs/webui
RUN npm install && \
    npm build
CMD npm run start

EXPOSE 3000
