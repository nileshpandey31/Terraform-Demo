variable "region" {
  type = string
  description = "Region where resource will be deployed"
}

variable "vpcinfo" {
    type = map(string)
    description = "attributes and tags on vpc"
  
}

variable "subnet1info"{
    type = map(string)
    description = "attributes and tags on subnet1"
}

variable "subnet2info"{
    type = map(string)
    description = "attributes and tags on subnet2"
}

variable "web_app1_name" {
    type = string
    description = "name tags of web_app1" 
}

variable "web_app2_name" {
    type = string
    description = "name tags of web_app2" 
}

variable "instance_type" {
    type = string
    description = "Instance type of web app"  
}

variable "ami" {
  type = string
  description = "Ami"
}
