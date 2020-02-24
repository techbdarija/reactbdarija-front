from nginx:1.17.8-alpine

Workdir /usr/share/nginx/html

ADD build /usr/share/nginx/html

EXPOSE 80 443
