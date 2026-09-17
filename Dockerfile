# Builiding my profuction bundle

FROM node:22-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

#2 serving the bundling with an http server


