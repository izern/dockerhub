FROM golang
MAINTAINER zern
USER  root
RUN apt-get update && \
 apt-get install -y tzdata git make && \
 rm -rf /var/lib/apt/lists/* && \
 echo Asia/Shanghai > /etc/timezone && \
 ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
 rm -rf /var/lib/apt/lists/*

RUN mkdir -p $GOPATH/src/github.com/tendermint && \
   cd $GOPATH/src/github.com/tendermint && \
   git clone https://github.com/tendermint/tendermint.git && \
   cd tendermint && \
   make get_tools && \
   make get_vendor_deps && \
   make install && \
   make build
