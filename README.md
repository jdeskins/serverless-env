# serverless-env

Creates a serverless framework environment with Node.js(4.3) and Python(2.7) installed.
Run from your app source directory to mount into the container's /app directory.

## Build Local Docker Image
```
docker build -t serverless-env .
```

## Run the Public LW Docker Container
```
docker run -it -e USER -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION \
    -v $(PWD):/app/ \
    serverless-env
```

## Run specific serverless version
Container should be previously built.
```
docker run -it -e USER -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION \
    -v $(PWD):/app/ \
    serverless-env:1.26.0
```

## Create New Node.js Service
```
serverless create --template aws-nodejs
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
