FROM golang
MAINTAINER zern
USER  root
RUN apt-get update && \
 apt-get install -y tzdata git make && \
 rm -rf /var/lib/apt/lists/* && \
 echo Asia/Shanghai > /etc/timezone && \
 ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
 rm -rf /var/lib/apt/lists/*

RUN mkdir -p $GOPATH/src/github.com/cosmos && \
   cd $GOPATH/src/github.com/cosmos && \
   git clone https://github.com/cosmos/cosmos-sdk.git && \
   cd cosmos-sdk && \
   git checkout origin/v0.32.0 -b v0.32.0 && \
   make devtools && \
   make vendor-deps && \
   make install
