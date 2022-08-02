#!/bin/bash
sudo docker run -d --name jsn-dkr-run -p 8888:80 nginx:mainline
docker ps
sudo docker stop jsn-dkr-run
sudo docker ps -a

