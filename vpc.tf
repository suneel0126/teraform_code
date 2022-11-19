resource "aws_vpc" "QC" {
  assign_generated_ipv6_cidr_block = true
  cidr_block = var.cidr_block

}
resource "aws_subnet" "public" {
    cidr_block = aws_vpc.QC.id
    region = var.region
    
}
resource "aws_subnet" "pravete" {
    cidr_block = aws_vpc.QC.id
    
  
}