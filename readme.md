# CloudWatch Alarm using Terraform

This repository contains Terraform code to create a CloudWatch alarm based on a custom metric derived from Lambda logs.

## Architecture

Lambda Logs → Metric Filter → CloudWatch Metric → CloudWatch Alarm → SNS Email

## Resources Created

- SNS Topic
- SNS Email Subscription
- CloudWatch Alarm

## Alarm Condition

Metric: info-count  
Namespace: /moviedb-api/indy  
Threshold: >10 events in 1 minute

## Usage

terraform init
terraform apply