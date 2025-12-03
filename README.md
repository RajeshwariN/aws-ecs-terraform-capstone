# AWS ECS Terraform Capstone Project

This repository contains a **containerized web application** deployed on **AWS ECS Fargate** using **Terraform**. The project demonstrates full infrastructure provisioning with IaC and container orchestration.

---

## Project Overview

- **Application:** Simple HTML page served via Nginx (customizable)
- **Infrastructure:**
  - **VPC** with public and private subnets
  - **Internet Gateway** & NAT Gateway
  - **Route Tables** & Security Groups
- **AWS Services Used:**
  - ECS Fargate
  - Application Load Balancer (ALB)
  - CloudWatch Logs
  - ECR (Elastic Container Registry)
- **Deployment:** Terraform automates cluster, service, and task definitions

---

## Prerequisites

- AWS CLI configured with appropriate IAM permissions
- Terraform installed (`v1.5+`)
- Docker installed for building container images
- GitHub account (for pushing code)

---

## Usage

### 1. Build and push Docker image to ECR

```bash
docker build -t myapp .
docker tag myapp:latest <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/my-app:latest
docker push <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/my-app:latest

### 2. Initialize Terraform

```bash
terraform init

### 3. Apply Terraform configuration

```bash
terraform apply

### 4. Access the application

```bash
http://dev-alb-3751824.ap-south-1.elb.amazonaws.com/


### Repository Structure
aws-ecs-terraform-capstone/
│
├─ app/
│  ├─ Dockerfile
│  ├─ index.html
│  └─ app.py
├─ terraform/
│  └─ *.tf files
├─ README.md
