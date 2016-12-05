FROM node:7.1.0-alpine


ENV HTTP_PORT 8080

RUN apk add --update bash



RUN npm --registry=https://registry.npm.taobao.org --disturl=https://npm.taobao.org/dist install

EXPOSE 8080

CMD ["npm", "start"]