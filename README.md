# AWS ECS + Terraform Capstone Project

## Project Overview
This capstone project demonstrates deploying a **containerized web application** on **AWS ECS Fargate** using **Terraform**. Key features include:

- Full **VPC setup** with public and private subnets  
- **Security groups** for ECS tasks and ALB  
- **ECS cluster** with Fargate tasks  
- **Application Load Balancer (ALB)** with health checks  
- Dockerized web application deployment  

---

## Repository Structure
aws-ecs-terraform-capstone/
│
├─ app/
│ ├─ Dockerfile
│ ├─ index.html
│ └─ app.py
├─ terraform/
│ └─ *.tf files
├─ README.md


---

## Prerequisites
Before deploying, ensure you have:

- AWS account with permissions for ECS, VPC, ALB, and IAM  
- Terraform >= 1.0  
- AWS CLI configured  
- Docker installed (for building local images if needed)  

---

## Deployment Instructions

### Step 1: Clone the Repository
```bash
git clone https://github.com/RajeshwariN/aws-ecs-terraform-capstone.git
cd aws-ecs-terraform-capstone/terraform

Step 2: Configure Variables

Edit terraform.tfvars:
aws_region = "ap-south-1"
environment = "dev"
availability_zones = ["ap-south-1a", "ap-south-1b"]
instance_ssh_allowed_cidr = "YOUR.IP.ADD.RESS/32"
container_image = "nginxdemos/hello"

Replace YOUR.IP.ADD.RESS with your public IP.

Step 3: Initialize Terraform
terraform init

Step 4: Plan the Deployment
terraform plan

Step 5: Apply the Deployment
terraform apply
Type yes when prompted.

tep 6: Verify Deployment

Go to AWS ECS → Clusters → Your Cluster → Tasks — ensure tasks are running

Check ALB → Target Groups — tasks should be healthy

Open the ALB URL in your browser:

http://<alb-dns-name>

Step 7: Clean Up (Optional)
To destroy all resources:
terraform destroy

