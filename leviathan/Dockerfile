#
# Leviathan Docker Container Network Orchestrator
#
FROM ivanos/core:devel-erl

MAINTAINER IvanOS version: 0.1

RUN mkdir Git
RUN cd Git && git clone https://github.com/ivanos/dobby_allinone_node
RUN cd Git/dobby_allinone_node && make

EXPOSE 11133

EXPOSE 8080

CMD ["/Git/dobby_allinone_node/rel/dobby_allinone/bin/dobby_allinone","console"]
