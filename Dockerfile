FROM node:4.3

ENV REFRESHED_AT 2016-08-19

RUN apt-get update && apt-get install -y \
    build-essential \
    python-dev \
    python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip awscli boto3

RUN npm install aws-sdk serverless@1.1.0 -g

RUN mkdir /app

WORKDIR /app

CMD "/bin/bash"
