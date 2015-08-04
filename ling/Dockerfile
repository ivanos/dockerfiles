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
RUN cd Git && git clone -b libuv https://github.com/cloudozer/lincx.git
RUN cp Git/ling/railing/railing Git/lincx
RUN cp Git/lincx/lincx.yml.sample Git/lincx/lincx.yml
RUN cd Git/lincx && ./rebar get-deps 
RUN cd Git/lincx && ./rebar co 
RUN cd Git/lincx && ./railing image
RUN ldconfig
