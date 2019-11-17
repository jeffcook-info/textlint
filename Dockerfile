FROM node:alpine

RUN apk add npm
RUN npm install --global textlint
