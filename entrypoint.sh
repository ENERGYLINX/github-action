#!/bin/sh -l

echo "Key: ${!INPUT_AWS-ACCESS-KEY-ID}"
echo "Key2: ${!INPUT_AWS-SECRET-ACCESS-KEY}"
echo "Key3: $2"
aws configure set region eu-west-2 --profile dev-deploy
aws configure set profile.dev-deploy.aws_access_key_id "${!INPUT_AWS-ACCESS-KEY-ID}"
aws configure set profile.dev-deploy.aws_secret_access_key "${!INPUT_AWS-SECRET-ACCESS-KEY}"
serverless deploy
