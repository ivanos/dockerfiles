#
# Leviathan Docker Container Network Orchestrator
#
FROM ivanos/core:priv-1

MAINTAINER IvanOS version: 0.1

RUN mkdir Git
#RUN cd Git && git clone https://github.com/ivanos/dobby_allinone_node
#RUN cd Git/dobby_allinone_node && make
RUN cd Git && git clone -b sigstop-1 https://github.com/ivanos/leviathan_lib
RUN cd Git/leviathan_lib && make


#EXPOSE 4567

#EXPOSE 8080

#CMD ["/Git/dobby_allinone_node/rel/dobby_allinone/bin/dobby_allinone","console"]
