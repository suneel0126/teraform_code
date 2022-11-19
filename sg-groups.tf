resource aws_security_group "sg-all" {
    aws_subnet = aws_vpc
    aws_security_group = assign_generated_ipv6_cidr_block
  
}