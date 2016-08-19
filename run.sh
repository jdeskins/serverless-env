#!/bin/bash

docker run -it -e USER -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION \
    -v $(PWD):/app/ \
    jdeskins/serverless-env
