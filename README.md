# Multi-Environment Infrastructure on AWS using Terraform

Provision a production-style AWS infrastructure using **Terraform** with isolated **Development**, **Staging**, and **Production** environments. Each environment is independently managed while sharing common networking resources.

<img width="1536" height="1024" alt="ChatGPT Image Jul 16, 2026, 03_29_07 AM" src="https://github.com/user-attachments/assets/6c0bd3fa-9b12-4d4a-b348-3181a2703b70" />

---

## 📌 Project Overview

This project demonstrates how Terraform can be used to provision and manage infrastructure across multiple environments while keeping configurations modular, reusable, and scalable.
Each environment contains its own compute, storage, and database resources, allowing safe development, testing, and production deployments.

---

## 🚀 Infrastructure Created

### Development Environment
- EC2 Instance
- S3 Bucket
- DynamoDB Table

### Staging Environment
- EC2 Instance
- S3 Bucket
- DynamoDB Table

### Production Environment
- 3 EC2 Instances
- S3 Bucket
- DynamoDB Table

### Shared Resources
- VPC
- Security Groups

---
## 📂 Project Structure

```text
terraform-aws-multi-environment/
│
├── aws_infra_modules/
│   ├── my_bucket.tf          # S3 bucket module
│   ├── my_instance.tf        # EC2 instance module
│   ├── my_table.tf           # DynamoDB table module
│   └── my_variable.tf        # Module variables
│
├── main.tf                   # Calls infrastructure modules
├── terraform.tf              # Terraform configuration
├── variable.tf               # Input variables
├── output.tf                 # Output values
│
├── ec2.tf                    # EC2 resources
├── s3.tf                     # S3 bucket resources
├── dynamodb.tf               # DynamoDB resources
│
├── .terraform.lock.hcl       # Provider lock file
├── .gitignore
└── README.md
```
---

## ⚙️ Deployment

Initialize Terraform

```bash
terraform init
```

Validate configuration

```bash
terraform validate
```

Preview changes

```bash
terraform plan
```

Create infrastructure

```bash
terraform apply
```

Destroy infrastructure

```bash
terraform destroy
```

