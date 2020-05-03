#!/bin/sh -l
aws configure set region eu-west-2 --profile dev-deploy
aws configure set aws_access_key_id $1 --profile dev-deploy
aws configure set aws_secret_access_key $1 --profile dev-deploy
serverless deploy
