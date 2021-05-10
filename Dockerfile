FROM node:14.16.1-alpine3.11

WORKDIR /app

COPY package.json ./package.json
COPY package-lock.json ./package-lock.json

RUN npm ci

COPY elm.json ./elm.json
COPY answers ./answers
COPY tests  ./tests

CMD ["npm", "start"]