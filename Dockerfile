FROM nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY html /usr/share/nginx/html

EXPOSE 80
