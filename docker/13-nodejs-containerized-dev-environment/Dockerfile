FROM node:22.11.0-alpine3.19

USER node
WORKDIR /app

COPY --chown=node:node package.json yarn.lock ./
RUN yarn install

COPY --chown=node:node . .

EXPOSE 3000

CMD ["yarn", "start"]

