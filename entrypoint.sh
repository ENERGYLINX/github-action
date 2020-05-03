#!/bin/sh -l

echo "Key: $1"
echo "Key2: $1"
echo "Key3: $2"
aws configure set region eu-west-2 --profile dev-deploy
aws configure set profile.dev-deploy.aws_access_key_id $1
aws configure set profile.dev-deploy.aws_secret_access_key $1
serverless deploy
