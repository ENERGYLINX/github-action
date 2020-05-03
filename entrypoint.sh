#!/bin/sh -l
aws configure set region eu-west-2 --profile dev-deploy
aws configure set profile.dev-deploy.aws_access_key_id $1
aws configure set profile.dev-deploy.aws_secret_access_key $1
serverless deploy
