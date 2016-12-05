FROM node:5.2.0-wheezy

RUN mkdir -p /src

WORKDIR /src

#install nodejs dependencies
RUN npm install

CMD npm install && node index.js