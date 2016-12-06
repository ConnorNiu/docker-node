FROM node:7.2.0-alpine

RUN mkdir -p /src

WORKDIR /src

RUN npm install webpack -g

RUN apk add --update bash

#RUN npm install
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

#install nodejs dependencies
CMD cnpm install && cnpm start