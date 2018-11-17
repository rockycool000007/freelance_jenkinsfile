FROM alpine:latest

WORKDIR /usr/src/app

RUN apk update
RUN apk add nginx git
RUN mkdir -p /run/nginx

EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]