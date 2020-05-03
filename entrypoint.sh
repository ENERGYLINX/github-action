#!/bin/sh

echo "aws config"
echo "1st"
echo "${INPUT_AWS-ACCESS-KEY-ID}"
echo "${INPUT_AWS-SECRET-ACCESS-KEY}"
echo "2nd"
echo "${AWS-ACCESS-KEY-ID}"
echo "${AWS-SECRET-ACCESS-KEY}"
aws configure set region eu-west-2 --profile dev-deploy
aws configure set profile.dev-deploy.aws_access_key_id "${INPUT_AWS-ACCESS-KEY-ID}"
aws configure set profile.dev-deploy.aws_secret_access_key "${INPUT_AWS-SECRET-ACCESS-KEY}"
serverless deploy --verbose -stage dev
