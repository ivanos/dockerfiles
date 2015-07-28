#
# Leviathan Docker Container Network Orchestrator
#
FROM ubuntu:14.04

MAINTAINER IvanOS version: 0.1

RUN apt-get update && \
    apt-get install -y gcc && \
    apt-get install -y make && \
    apt-get install -y binutils && \
    apt-get install -y autoconf && \ 
    apt-get install -y libncurses5-dev  && \ 
    apt-get install -y libpam0g-dev  && \ 
    apt-get install -y libpam4j-java && \
    apt-get install -y libssl-dev && \
    apt-get install -y default-jdk && \
    apt-get install -y g++ && \
    apt-get install -y unixodbc-dev && \ 
    apt-get install -y fop && \
    apt-get install -y xsltproc  && \
    apt-get install -y libxml2-utils && \ 
    apt-get install -y ruby-dev

RUN apt-get install -y wget

RUN cd /usr/local/src && wget http://www.erlang.org/download/otp_src_17.5.tar.gz

RUN cd /usr/local/src && tar xvfz ./otp_src_17.5.tar.gz

RUN cd /usr/local/src/otp_src_17.5 && ./configure && make && make install


CMD /usr/bin/bash
