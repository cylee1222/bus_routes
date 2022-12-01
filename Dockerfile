FROM node:latest

EXPOSE 9000

WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

RUN npm install

COPY ./app /app

CMD ["node", "index"]
