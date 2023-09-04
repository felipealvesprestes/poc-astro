FROM node:latest

WORKDIR /usr/src/app

COPY ./app/package*.json ./

RUN npm ci

COPY ./app .

RUN chown -R 1000:1000 /usr/src/app

EXPOSE 3000

CMD ["npm", "run", "dev"]
