#!/bin/bash

aws \
  ecr \
  get-login-password \
  --region $AWS_CHAOS_ENGINEERING_REGION | \
  docker login \
  --username AWS \
  --password-stdin $AWS_CHAOS_ENGINEERING_ACCOUNT_NUMBER.dkr.ecr.$AWS_CHAOS_ENGINEERING_REGION.amazonaws.com

docker build -f Dockerfile -t failover-routing-policy-primary:latest .

docker tag failover-routing-policy-primary:latest $AWS_CHAOS_ENGINEERING_ACCOUNT_NUMBER.dkr.ecr.$AWS_CHAOS_ENGINEERING_REGION.amazonaws.com/failover-routing-policy-primary:latest

docker push $AWS_CHAOS_ENGINEERING_ACCOUNT_NUMBER.dkr.ecr.$AWS_CHAOS_ENGINEERING_REGION.amazonaws.com/failover-routing-policy-primary:latest
