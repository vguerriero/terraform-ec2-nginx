# Terraform EC2 NGINX Pipeline

This project provisions an EC2 instance running NGINX using Terraform. It can be used to quickly spin up a test server or as a base for CI/CD pipelines.

## Prerequisites
- [Terraform](https://www.terraform.io/) installed
- AWS credentials configured for Terraform

## Usage
1. Initialize the working directory:
   ```sh
   terraform init
   ```
2. Review the execution plan, specifying the AMI to use:
   ```sh
   terraform plan -var "ami=AMI_ID"
   ```
3. Apply the configuration:
   ```sh
   terraform apply -var "ami=AMI_ID"
   ```

## Destroying the Environment
To tear down the created resources:
```sh
terraform destroy -var "ami=AMI_ID"
```
