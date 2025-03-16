FROM nginx:1.19.0-alpine

COPY ./docker/djangonotenginx.conf /etc/nginx/conf.d/default.conf