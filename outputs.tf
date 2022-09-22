output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}


output "subnet_id" {
  value = aws_instance.app_server.subnet_id
}


output "ami_id" {
  value = aws_instance.app_server.ami
}
