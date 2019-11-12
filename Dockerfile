FROM node:alpine

RUN apk add nps
RUN npm install --global textlint
