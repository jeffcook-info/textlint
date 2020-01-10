FROM node:13.6.0-alpine

RUN apk add npm

COPY package*.json /

RUN npm install

ENV TEXTLINT_CONFIG /.textlintrc
COPY .textlintrc $TEXTLINT_CONFIG

ENV PATH $PATH:/node_modules/.bin
CMD ["textlint", "--config", "$TEXTLINT_CONFIG", "."]
CMD ["textlint", "."]
# CMD ["--help"]
WORKDIR /work
