region = "us-east-1"

vpcinfo = {
  "name" = "web-app-vpc"
  "cidrblock" = "10.245.0.0/16"
}

subnet1info = {
  "name" = "web-app-subnet1"
  "cidrblock" = "10.245.1.0/24"
}

subnet2info = {
  "name" = "web-app-subnet2"
  "cidrblock" = "10.245.10.0/24"
}

web_app1_name = "web-app1"
web_app2_name = "web-app2"
instance_type = "t2.micro"
ami= "ami-0230bd60aa48260c6"

