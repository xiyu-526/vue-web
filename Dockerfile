FROM nginx
LABEL name="vue-web"
LABEL version="1.0"
COPY ./dist /usr/share/nginx/html
COPY ./vue-config.conf /etc/nginx/conf.d
WORKDIR /usr/share/nginx/html

EXPOSE 80


