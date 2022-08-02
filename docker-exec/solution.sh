#!/bin/bash
docker run -d --name jusan-docker-exec -p 8181:80 nginx:mainline
docker ps
docker exec -it jusan-docker-exec bash
cat << EOF > /etc/nginx/conf.d/jusan-docker-exec.conf
server {
    listen 80;
    server_name jusan.singularity;

    location / {return 200 'Hello, from jusan-docker-exec';}
    location /home {return 201 'This is my home!';}
    location /about {return 202 'I am just an exercise!';}
}
EOF
cd /etc/nginx/conf.d
rm default.conf
nginx -s reload
exit
systemctl restart nginx
curl http://localhost:8181

