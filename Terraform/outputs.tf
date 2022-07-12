
output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_sg" {
  value = aws_security_group.sg["public"].id
}

output "public_subnet" {
  value = aws_subnet.public_subnet.id
}

output "ec2_public_dns" {
  value = aws_instance.node.public_dns
}

output "ec2_public_ip" {
  value = aws_eip.eip.public_ip
}

output "ec2_public_ip" {
  value = module.ec2.ec2_public_ip
}

output "ec2_public_dns" {
  value = module.ec2.ec2_public_dns
}