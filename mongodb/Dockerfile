FROM ubuntu: 18.04
MAINTAINER aahad91

RUN  apt-get update && apt-get install -y \
      iproute2 \
      build-essential \
      mongodb \
      vim

RUN mkdir -p /data/db

WORKDIR /
COPY .json /
COPY run_db.sh /
RUN chmod +x run_db.sh
CMD ./run_db.sh
ENTRYPOINT usr/bin/mongodb
EXPOSE 27017
