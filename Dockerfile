FROM node:6.10-alpine

ENV REFRESHED_AT 2018-01-29

RUN apk add --update \
    bash \
    su-exec \
    && rm -rf /tmp/* /var/cache/apk/* \
    && mkdir /app

RUN npm install aws-sdk serverless@1.26.0 -g

WORKDIR /app

CMD "/bin/bash"
