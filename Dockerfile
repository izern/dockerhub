FROM gcr.io/spinnaker-marketplace/halyard:1.9.1
MAINTAINER zern
USER  root
RUN apt-get update && \
 apt-get install -y tzdata && \
 rm -rf /var/lib/apt/lists/* && \
 echo Asia/Shanghai > /etc/timezone && \
 ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
 rm -rf /var/lib/apt/lists/*
 USER spinnaker
