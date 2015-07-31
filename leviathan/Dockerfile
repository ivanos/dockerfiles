#
# Leviathan Docker Container Network Orchestrator
#
FROM ivanos/core:priv-1

MAINTAINER IvanOS version: 0.1

RUN mkdir Git
RUN cd Git && git clone -b ui-devel https://github.com/ivanos/leviathan_node
RUN cd Git/leviathan_node && make

EXPOSE 4567

EXPOSE 8080

CMD ["/Git/leviathan_node/_rel/leviathan/bin/leviathan"]
