#!/bin/bash
#
###########################
#Author:Abhijit
#Date:15th May 2024
#Version:V1
#This script for monitor AWS resorce usage
###########################

#AWS Resources:EC2,S3,Lambda,IAM

#set -x
#set -e
#set -o pipefail

echo "###############################"
echo "Current uptime"
uptime

echo "################################"
echo "List of EC2 Intance Id's"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


echo "################################"
echo "List of S3 buckets" 


aws s3 ls 


echo "################################"
echo "List of lambda functions"

aws lambda list-functions 


echo "################################"
echo "List of IAM users"

aws iam list-users



