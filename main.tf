module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = var.ami
    instance_type = lookup(instance_type, terraform.workspace, t3.xlarge) #it will see the instance type and it will see the workspace in which it is present  it wil create the resource there no need to specify the tfvars file while executing the command  
  
}

variable "ami" {
    description = "value"
  
}

variable "instance_type" {
    description = "value"
    type = map(string) # in which environment the ec2 instance of which type should it create 
    default = {
      "dev" = "t2.micro"
      "stage" = "t3.medium"
      "prod" = "t3.small"
    }
  
}