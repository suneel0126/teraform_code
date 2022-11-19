resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "Name" = "Main"
    }
  
}

#create IGW For VPC

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "igw"
  }
}

#Create Subnets....!
resource "aws_subnet" "private-us-east-1a" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/19"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private-us-east-1a"

  }
}
resource "aws_subnet" "private-us-east-1b" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.32.0/19"
    availability_zone = "us-east-1b"
    tags = {
      "Name" = "private-us-east-1b"
      "internal-elb" = "1"
    }
  
}

resource "aws_subnet" "public-1" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.64.0/19"
    availability_zone = "us-east-1a"
    tags = {
      "Name" = "public-us-east-1a"
    }
  
}