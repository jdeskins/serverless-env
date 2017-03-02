FROM node:4.7.3-alpine

ENV REFRESHED_AT 2017-02-20

RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN npm install aws-sdk serverless@1.8.0 -g

RUN mkdir /app

WORKDIR /app

CMD "/bin/bash"
