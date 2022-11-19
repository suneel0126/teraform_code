resource "aws_instance" "QC" {
    ami = 
    instance_type = t2.micro
    key_name = devops
    security_groups = [ "all" ]
    
    tags = {
    name = public
    }
  
}