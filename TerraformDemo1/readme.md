# Getting Started with Terraform

This guide will walk you through the steps to get started with Terraform.

## Steps

1. **Download and Extract Terraform**: 
   - Download Terraform from the official website and extract it to a folder of your choice.

2. **Copy Terraform to Required Folder**: 
   - Copy the extracted Terraform folder to the required directory on your system.

3. **Add Terraform Path to System Variables**: 
   - Add the path to the Terraform executable to the system environment variables.

4. **Verify Installation**: 
   - Verify the installation by running the following command in your terminal:
    
     terraform -version
    

5. **Set Up AWS Credentials**: 
   - Before working with AWS, it's a best practice to create system variables for your access token and secret key instead of using them directly in your code.

# AWS VPC and EC2 Instance Deployment with Terraform

This Terraform configuration defines infrastructure as code for creating an AWS Virtual Private Cloud (VPC) along with two subnets and EC2 instances within those subnets.

## Overview

This Terraform script automates the setup of the following resources on AWS:
- **VPC**: A Virtual Private Cloud to isolate your network resources.
- **Subnets**: Two subnets created within the VPC, one with public IP assignment enabled and the other without.
- **EC2 Instances**: Two EC2 instances launched within the created subnets, one with a public IP and the other without.


## Terraform Configuration

The provided Terraform code (`main.tf`) showcases various features of Terraform:

- **Provider Block**: Specifies the AWS provider and region to be used for resource provisioning.

- **Resource Blocks**:
  - **VPC (`aws_vpc.web_app_vpc`)**: Defines a VPC with the specified CIDR block and assigns tags for identification.
  - **Subnets**:
    - **First Subnet (`aws_subnet.subnet1`)**: Creates a subnet within the VPC specified by `aws_vpc.web_app_vpc`, with the specified CIDR block and tags.
    - **Second Subnet (`aws_subnet.subnet2`)**: Creates another subnet within the same VPC, with public IP assignment enabled and specified CIDR block and tags.
  - **EC2 Instances**:
    - **Web App Instance 1 (`aws_instance.web_app1`)**: Launches an EC2 instance within the first subnet (`aws_subnet.subnet1`) without a public IP and with the specified instance type, AMI, key pair, and tags.
    - **Web App Instance 2 (`aws_instance.web_app2`)**: Launches another EC2 instance within the second subnet (`aws_subnet.subnet2`) with a public IP, specified instance type, AMI, key pair, and tags.

- **Data Source for Key Pair (`data.aws_key_pair.mykey`)**: Fetches an existing AWS key pair by its name.

- **Variables**: The configuration uses variables to parameterize values like VPC CIDR blocks, subnet CIDR blocks, instance types, etc.

- **Output**: The output section can be added to display useful information after the infrastructure is created.

    
