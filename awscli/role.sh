#!/bin/bash

aws iam create-role \
    --role-name EC2DynamoDBAccessRole \
    --assume-role-policy-document file://<(echo '{
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "ec2.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }')
