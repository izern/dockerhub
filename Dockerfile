FROM ubuntu
MAINTAINER zern
RUN apt-get update && \
  apt-get install -y mercurial && \
  hg clone http://hg.openjdk.java.net/jdk8u/jdk8u/ 

RUN cd jdk8u && bash ./get_source.sh
