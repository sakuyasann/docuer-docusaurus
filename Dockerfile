FROM node:14.17.0-alpine
WORKDIR /usr/src/app

RUN apk add make gcc g++