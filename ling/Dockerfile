#
# Leviathan Docker Container Network Orchestrator
#
#
# docker run -v /run:/run -v /var:/host/var -v /proc:/host/proc 
#            --net=host --privileged=true -i -t ivanos/core:priv-1 
#
FROM ivanos/core:devel-erl

MAINTAINER IvanOS version: 0.1

RUN apt-get update && apt-get install -y pkg-config
RUN mkdir Git
RUN cd Git && git clone https://github.com/libuv/libuv.git
RUN ldconfig
RUN cd Git/libuv && ./autogen.sh && ./configure && make && make install
RUN cd Git && git clone -b libuv https://github.com/cloudozer/ling.git
RUN cd Git/ling && make
