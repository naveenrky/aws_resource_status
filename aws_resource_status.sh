#!/bin/bash

########################################
# Author: Naveen
# Date: 21st-Aug
#
# Version: v1
#
# This script wil report the AWS resource usage
#########################################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourceTracker

# list EC2 Instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# list lambda
echo "print list of lambda functions"
aws lambda list-functions >> resourceTracker:q!

# list IAM Users
echo "print list of IAM"
aws iam list-users >> resourceTracker
