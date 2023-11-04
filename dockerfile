FROM node:20-alpine3.18

RUN npm install -g express-gateway

EXPOSE 8080

WORKDIR /usr/src/app

COPY package.json package.json

RUN apk add --no-cache tini

RUN npm install

COPY . . 

CMD ["npm", "start"]