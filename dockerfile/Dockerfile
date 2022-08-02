FROM nginx:mainline
RUN rm /etc/nginx/conf.d/default.conf
COPY jusan-dockerfile.conf /etc/nginx/conf.d/jusan-dockerfile.conf
COPY jusan-dockerfile /var/www/jusan-dockerfile
