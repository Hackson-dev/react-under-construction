FROM node:20.9.0-alpine

WORKDIR /usr/src/app

RUN yarn add npm@10.2.4

COPY package*.json ./
COPY vite.config.js ./

COPY . .

RUN yarn

EXPOSE 3001

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]