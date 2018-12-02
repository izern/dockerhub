FROM gcr.io/spinnaker-marketplace/halyard:1.9.1
MAINTAINER zern
RUN cho Asia/Shanghai > /etc/timezone && \
 ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
