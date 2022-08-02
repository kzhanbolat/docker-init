#!/bin/bash
docker run -d -it --name jusan-docker-bind  -p 7777:80 -v /home/zhanbolat.kulzhabek/Downloads/jusan-docker/docker-bind/nginx.conf:/etc/nginx/nginx.conf nginx:mainline
curl http://localhost:7777
docker logs jusan-docker-bind

