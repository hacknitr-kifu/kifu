FROM node:lts-alpine

WORKDIR /usr/src/app

COPY ./server/package*.json ./

RUN yarn install

COPY ./server .

RUN yarn tsc

EXPOSE 3000

CMD ["node", "dist"]