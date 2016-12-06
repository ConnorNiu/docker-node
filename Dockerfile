FROM node:5.2.0-wheezy

RUN mkdir -p /src

WORKDIR /src

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

#install nodejs dependencies
CMD cnpm install && npm start