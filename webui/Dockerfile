FROM ubuntu:18.04
MAINTAINER aahad91

RUN apt-get update && apt-get install -y curl npm git
RUN git clone https://github.com/open5gs/open5gs
WORKDIR /open5gs/webui
COPY index.js /server/
RUN npm install && \
    npm build
CMD npm run dev

EXPOSE 3000
#username: admin
#password: 1423
