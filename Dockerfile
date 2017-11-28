FROM ubuntu:16.04
MAINTAINER pbeamer

ARG OPENVPN_SERVER="2.1.12"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        iptables \
        net-tools \
        curl \
        rsync && \
curl -o \
    /tmp/openvpnas.deb -L \
        http://swupdate.openvpn.org/as/openvpn-as-${OPENVPN_SERVER}-Ubuntu16.amd_64.deb && \
    dpkg -i /tmp/openvpnas.deb
