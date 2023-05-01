resource "aws_instance" "QC" {
    ami = "ami-007855ac798b5175e"
    instance_type = t2.micro
    key_name = devops
    security_groups = [ "all" ]
    
    tags = {
    name = public
    }
  
}
