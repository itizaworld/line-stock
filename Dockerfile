FROM node:lts-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . ./

EXPOSE 8080

RUN npm run build
CMD [ "npm", "start" ]
