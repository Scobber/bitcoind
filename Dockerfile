FROM ubuntu:latest
MAINTAINER Scott Pepper <scott-docker@pep.id.au>
RUN apt-get update && apt-get -y upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
    nano wget curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/

RUN curl -o bitcoin.tar.gz https://bitcoin.org/bin/bitcoin-core-0.19.1/bitcoin-0.19.1-x86_64-linux-gnu.tar.gz
RUN mkdir bitcoin
RUN tar -xvf bitcoin.tar.gz --stripcomponents 1 ./bitcoin
