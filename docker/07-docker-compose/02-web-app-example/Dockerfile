FROM node:22.11.0-alpine

WORKDIR /app

COPY ./src/package.json ./src/yarn.lock ./

RUN corepack enable && yarn install

COPY ./src .

EXPOSE 8080

CMD ["node", "server.js"]