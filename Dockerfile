FROM debian:latest
MAINTAINER Scott Pepper <scott-docker@pep.id.au>
RUN apt-get update && apt-get -y upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
    nano wget curl bash && \
    apt-get clean && rm -rf /var/lib/apt/lists/

RUN mkdir bitcoin && cd bitcoin
RUN curl -o bitcoin.tar.gz https://bitcoin.org/bin/bitcoin-core-0.19.1/bitcoin-0.19.1-x86_64-linux-gnu.tar.gz
RUN tar -xvf bitcoin.tar.gz --strip-components 1

