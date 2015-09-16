FROM ubuntu:14.04
RUN apt-get update && apt-get install -y build-essential
RUN apt-get install -y erlang git libpam0g-dev libpcap0.8-dev
# Some firewalls block the git:// protocol.  Use HTTPS instead.
RUN git config --global url."https://".insteadOf git://
RUN git clone https://github.com/FlowForwarding/LINC-Switch.git
WORKDIR LINC-Switch
RUN make compile

# We need a config file to build the release, but the real
# configuration will be written by config-and-run later.
RUN cp rel/files/sys.config.orig rel/files/sys.config
RUN make rel

ADD ./config-and-run ./
ENTRYPOINT ["./config-and-run"]
