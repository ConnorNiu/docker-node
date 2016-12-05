FROM node:5.2.0-wheezy

RUN mkdir -p /src

WORKDIR /src

#install nodejs dependencies
RUN npm install

EXPOSE 8080
EXPOSE 5000
EXPOSE 3000

CMD npm install && node index.js