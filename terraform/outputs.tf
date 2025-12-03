# ALB DNS
output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.alb.dns_name
}

# ECS Cluster
output "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  value       = aws_ecs_cluster.cluster.name
}

# ECS Service info
output "ecs_service_name" {
  description = "The ECS service name"
  value       = aws_ecs_service.app.name
}

output "ecs_service_id" {
  description = "The ECS service ID"
  value       = aws_ecs_service.app.id
}

output "ecs_service_desired_count" {
  description = "Desired number of ECS tasks"
  value       = aws_ecs_service.app.desired_count
}

# ECS Task Definition ARN
output "ecs_task_definition_arn" {
  description = "The ARN of the ECS Task Definition"
  value       = aws_ecs_task_definition.app.arn
}
