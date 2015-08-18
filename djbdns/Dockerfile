#
# Leviathan Docker Container Network Orchestrator
#
#
# docker run -v /run:/run -v /var:/host/var -v /proc:/host/proc 
#            --net=host --privileged=true -i -t ivanos/core:priv-1 
#
FROM ivanos/core:devel-erl

MAINTAINER IvanOS version: 0.1

RUN mkdir -p /package && chmod 1755 /package
RUN cd /package && wget http://cr.yp.to/daemontools/daemontools-0.76.tar.gz
RUN cd /package && tar xvfz daemontools-0.76.tar.gz && rm -rf daemontools-0.76.tar.gz
RUN sed -i '1s/.*/gcc -O2 -Wimplicit -Wunused -Wcomment -Wchar-subscripts -Wuninitialized -Wshadow -Wcast-qual -Wcast-align -Wwrite-strings -include \/usr\/include\/errno.h/' /package/admin/daemontools-0.76/src/conf-cc
RUN cd /package/admin/daemontools-0.76 && package/install

## Install djbdns
RUN cd /package && wget http://cr.yp.to/djbdns/djbdns-1.05.tar.gz
RUN cd /package && tar xvfz djbdns-1.05.tar.gz && rm -rf djbdns-1.05.tar.gz
RUN cd /package/djbdns-1.05 && echo gcc -O2 -include /usr/include/errno.h > conf-cc
RUN cd /package/djbdns-1.05 && make
RUN cd /package/djbdns-1.05 && make setup check
RUN useradd Gtinydns && useradd Gdnslog

CMD ["/command/svscanboot"]
