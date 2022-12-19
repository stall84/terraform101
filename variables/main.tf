
provider "aws" {
  region = "us-east-1"
}


######### Variables Section #################
#############################################

variable "vpcname" {
  type    = string
  default = "myvpc"
}

variable "sshport" {
  type    = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type = list(string)
  # We use conventional square brackets for the list/array
  default = ["Value1", "Value2"]
}

variable "mymap" {
  type = map(any)
  default = {
    Key1 = "Value1"
    Key2 = "Value2"
  }
}

variable "inputname" {
  type        = string
  description = "Set the name of the VPC"
}

variable "myobject" {
  type = object({ name = string, port = list(number) })
  default = {
    name = "MS"
    port = [22, 24, 28]
  }
}


######### Resources Section #################
#############################################


resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  ## Reference the string-name variable above
  tags = {
    # We can also access the input variable (for user to give at plan-time)
    Name = var.inputname
  }
}

######### Output/Attributes Section #########
#############################################

output "vpcID" {
  value = aws_vpc.myvpc.id
}
