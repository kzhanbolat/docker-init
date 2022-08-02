#!/bin/bash
cd docker-mount
curl https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.conf -o jusan-docker-mount.conf
mkdir zip
cd zip
curl https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.zip -o jusan-docker-mount.zip
unzip jusan-dicker-mount.zip
cd ..
docker run -d -it --name jusan1  -p 9999:80 -v /home/zhanbolat.kulzhabek/devops-3-docker-kzhanbolat/jusan-docker/docker-mount/jusan-docker-mount.conf:/etc/nginx/conf.d/default>



curl http://localhost:9999
curl http://localhost:9999/token
curl http://localhost:9999/test
