#!/bin/bash

# realis-openvpn
helm -n freqtrade upgrade -i binance-proxy-realis-ovpn \
         --set fullnameOverride=binance-proxy-realis-ovpn \
         --set SSH_USER=root \
         --set SSH_HOST=49.13.59.61 \
     ./helm-binance-proxy-sshuttle

# realis-stage
helm upgrade -i binance-proxy-realis-stage \
         --set fullnameOverride=binance-proxy-realis-stage \
         --set SSH_USER=ubuntu \
         --set SSH_HOST=135.181.144.17 \
     ./helm-binance-proxy-sshuttle

