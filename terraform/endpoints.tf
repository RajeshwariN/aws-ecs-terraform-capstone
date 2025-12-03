resource "aws_vpc_endpoint" "ecr_api" {
  vpc_id       = aws_vpc.main.id
  service_name = "com.amazonaws.ap-south-1.ecr.api"
  vpc_endpoint_type = "Interface"
  subnet_ids   = aws_subnet.private[*].id
  security_group_ids = [aws_security_group.ecs_sg.id]
}

resource "aws_vpc_endpoint" "ecr_dkr" {
  vpc_id       = aws_vpc.main.id
  service_name = "com.amazonaws.ap-south-1.ecr.dkr"
  vpc_endpoint_type = "Interface"
  subnet_ids   = aws_subnet.private[*].id
  security_group_ids = [aws_security_group.ecs_sg.id]
}

resource "aws_vpc_endpoint" "cloudwatch_logs" {
  vpc_id       = aws_vpc.main.id
  service_name = "com.amazonaws.ap-south-1.logs"
  vpc_endpoint_type = "Interface"
  subnet_ids   = aws_subnet.private[*].id
  security_group_ids = [aws_security_group.ecs_sg.id]
}
