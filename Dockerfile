FROM nginx:1.18

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY auth.js /etc/nginx/conf.d/auth.js

COPY htpasswd /etc/nginx/conf.d/htpasswd

EXPOSE 8080
