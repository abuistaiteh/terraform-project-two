# Terraform Project 2 - EC2 with CI

## Overview
This project provisions an AWS EC2 instance with a security group allowing SSH access.

## Technologies
- Terraform
- AWS
- GitHub Actions (CI)

## Features
- Infrastructure as Code using Terraform
- Automated CI pipeline:
  - terraform fmt
  - terraform init
  - terraform validate

## How to Use

1. Clone repo
2. Create terraform.tfvars:
   allowed_ssh_ip = "YOUR_IP/32"

3. Run:
   terraform init
   terraform plan
   terraform apply

## Notes
- terraform.tfvars is not committed for security reasons
- terraform plan is not part of CI (no AWS credentials in pipeline)
