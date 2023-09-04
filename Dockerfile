FROM node:alpine AS base

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm install

COPY ./ .

RUN chown -R 1000:1000 /usr/src/app

EXPOSE 3000

CMD ["npm", "run", "dev"]
