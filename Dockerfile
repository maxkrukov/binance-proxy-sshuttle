FROM ubuntu:22.04

#ENV SSH_USER
#ENV SSH_HOST

RUN apt update && apt install wget sshuttle ssh-client -y

RUN wget https://github.com/adrianceding/binance-proxy/releases/download/v1.5.1/binance-proxy \
    && chmod +x binance-proxy && mv binance-proxy /usr/bin/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
