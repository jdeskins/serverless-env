FROM node:6.10-alpine

ENV REFRESHED_AT 2017-04-17

RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN npm install aws-sdk serverless@1.17.0 -g

RUN mkdir /app

WORKDIR /app

CMD "/bin/bash"
