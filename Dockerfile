FROM node:7.2.0-alpine

RUN mkdir -p /src \
    && npm install webpack -g \
    && npm install -g bower gulp \
    && apk add --update bash \
    && rm -rf /var/cache/apk/* \
    && npm install -g cnpm --registry=https://registry.npm.taobao.org \

WORKDIR /src

#install nodejs dependencies
CMD cnpm install && cnpm start
