#!/bin/bash

tag=v1.5.1

docker build . -t localhost:32000/binance-proxy:${tag}
docker push localhost:32000/binance-proxy:${tag}
