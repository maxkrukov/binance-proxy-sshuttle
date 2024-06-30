#!/bin/bash

while true; do
  while !(pgrep sshuttle); do
     sshuttle -r ${SSH_USER}@${SSH_HOST} -x ${SSH_HOST} --daemon --ssh-cmd 'ssh -o ServerAliveInterval=15 -o StrictHostKeyChecking=no' 0/0
     sleep 5
  done
  sleep 5
done &

/usr/bin/binance-proxy -f 0.0.0.0:8091 -s 0.0.0.0:8090 -v
