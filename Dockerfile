FROM node:latest

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm ci

COPY ./ .

RUN chown -R 1000:1000 /usr/src/app

EXPOSE 3000

CMD ["npm", "run", "dev"]
