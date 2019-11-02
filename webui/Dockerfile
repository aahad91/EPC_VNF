FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y curl npm

RUN mkdir webui
WORKDIR /webui
COPY webui .

RUN npm install && npm build

COPY start.sh start.sh
RUN chmod +x start.sh

EXPOSE 3000
#username: admin
#password: 1423
