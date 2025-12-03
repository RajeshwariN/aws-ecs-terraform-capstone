variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Environment name (dev/prod/etc)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDRs (2 values, different AZs)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "List of private subnet CIDRs (2 values, different AZs)"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "availability_zones" {
  description = "AZs to use (must match length of subnets)"
  type        = list(string)
  default     = []
}

variable "instance_ssh_allowed_cidr" {
  description = "CIDR allowed for SSH (bastion or admin). Set to your IP e.g., x.x.x.x/32"
  type        = string
  default     = "0.0.0.0/0" # change to a secure CIDR before production
}

variable "container_image" {
  description = "Container image for the ECS task (Docker Hub or ECR image)"
  type        = string
  default = "977099021426.dkr.ecr.ap-south-1.amazonaws.com/my-app:latest"
}

variable "task_cpu" {
  description = "Task CPU units"
  type        = string
  default     = "256"
}

variable "task_memory" {
  description = "Task memory (MiB)"
  type        = string
  default     = "512"
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 2
}
