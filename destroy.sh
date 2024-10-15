#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: ./provision.sh system-name"
  exit 1
fi


cd PRD/$1;
rm -rf .terraform
terraform init;
terraform plan --var-file=$1.tfvars.sample
terraform destroy --var-file=$1.tfvars.sample --auto-approve