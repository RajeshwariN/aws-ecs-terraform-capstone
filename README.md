# AWS ECS + Terraform Capstone Project

## Project Overview
This capstone project demonstrates deploying a **containerized web application** on **AWS ECS Fargate** using **Terraform** for infrastructure provisioning. The project includes:

- VPC setup with public and private subnets
- Security groups for ECS tasks and ALB
- ECS cluster and Fargate tasks
- Application Load Balancer (ALB) with health checks
- Dockerized web application deployment

---

## Repository Structure
aws-ecs-terraform-capstone/
│
├─ app/
│  ├─ Dockerfile
│  ├─ index.html
│  └─ app.py
├─ terraform/
│  └─ *.tf files
├─ README.md

---

## Prerequisites
- AWS account with permissions for ECS, VPC, ALB, IAM
- Terraform >= 1.0
- AWS CLI configured
- Docker (for building local images if needed)

---

## Deployment Instructions

### Step 1: Clone the repository
```bash
git clone https://github.com/RajeshwariN/aws-ecs-terraform-capstone.git
cd aws-ecs-terraform-capstone/terraform

**### Step 2: Configure variables
**
Edit terraform.tfvars or variables.tf:

```bash
aws_region = "ap-south-1"
environment = "dev"
availability_zones = ["ap-south-1a", "ap-south-1b"]
instance_ssh_allowed_cidr = "YOUR.IP.ADD.RESS/32"

**### Step 3: Initialize Terraform
**
```bash
terraform init

**### Step 4: Plan the deployment
**
```bash
terraform plan

**### Step  5: Apply the deployment
**
```bash
terraform apply
Type yes when prompted.

**### Step  6: Verify deployment
**
Go to AWS ECS → Clusters → Your Cluster → Tasks — ensure tasks are running

Check ALB → Target Groups — tasks should be healthy

Open the ALB URL in your browser:
```bash
http://<alb-dns-name>

**### Step  7: Clean up (optional)
**
To destroy resources:

```bash
terraform destroy
