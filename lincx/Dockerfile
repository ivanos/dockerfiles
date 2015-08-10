#
# Leviathan Docker Container Network Orchestrator
#
#
# docker run -v /run:/run -v /var:/host/var -v /proc:/host/proc 
#            --net=host --privileged=true -i -t ivanos/core:priv-1 
#
FROM ivanos/ling:devel-1

MAINTAINER IvanOS version: 0.1

RUN cd Git && git clone -b libuv https://github.com/cloudozer/lincx.git
RUN cp Git/ling/railing/railing Git/lincx
RUN cp Git/lincx/lincx.yml.sample Git/lincx/lincx.yml
RUN cd Git/lincx && ./rebar get-deps 
RUN cd Git/lincx && ./rebar co 
RUN cd Git/lincx && ./railing image
RUN ldconfig
