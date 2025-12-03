resource "aws_ecr_repository" "app_repo" {
  name = "my-app"  # Replace with your actual repo name
  force_delete = true
  tags = {
    Name = "my-app"
  }
}