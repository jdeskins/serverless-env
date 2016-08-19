# serverless-env

Creates a serverless framework environment with Node.js(4.3) and Python(2.7) installed.
Run from your app source directory to mount into the container's /app directory.

## Build Docker Image
```
docker build -t jdeskins/serverless-env .
```

## Run the Docker Container
```
docker run -it -e USER -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION \
    -v $(PWD):/app/ \
    jdeskins/serverless-env
```

## Create New Python Service
```
serverless create --template aws-python
```

## Deploy
```
serverless deploy
```

## Execute Function
```
serverless invoke --function hello
```

## Create API Gateway Endpoint
Add event to handler config in serverless.yml
```
functions:
  hello:
    handler: handler.hello
    events:
      - http: GET hello
```
Deploy the updated service.  Endpoint url will be displayed in the output.
