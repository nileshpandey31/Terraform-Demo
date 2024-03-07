
#creating vpc

resource "aws_vpc" "web_app_vpc" {
    cidr_block = var.vpcinfo["cidrblock"]
    tags = {
      Name = var.vpcinfo["name"]
    } 
}

#creating first subnet
resource "aws_subnet" "subnet1" {
  
  vpc_id = aws_vpc.web_app_vpc.id
  cidr_block = var.subnet1info["cidrblock"]
  tags = {
    Name = var.subnet1info["name"]
  }
}

#creating second subnet

resource "aws_subnet" "subnet2" {
  
  vpc_id = aws_vpc.web_app_vpc.id
  cidr_block = var.subnet2info["cidrblock"]
  #instance launched within this subnet will have publicip
  map_public_ip_on_launch = true
  
  tags = {
    Name = var.subnet2info["name"]
  }
}


#fetching already existing keypair using data source

data "aws_key_pair" "mykey" {
key_name = "mykey"
}


#creating ec2 insatnce in created vpc and subnet

#by default it will not assign public ip
resource "aws_instance" "web_app1" {

   
    instance_type = var.instance_type
    subnet_id = aws_subnet.subnet1.id
    key_name = data.aws_key_pair.mykey.key_name
    ami = var.ami
    tags = {
      Name = var.web_app1_name
      
    } 
}

#by default public ip will be assigned
resource "aws_instance" "web_app2" {

    ami = var.ami
    instance_type = var.instance_type
    subnet_id = aws_subnet.subnet2.id
    
    key_name = data.aws_key_pair.mykey.key_name
    tags = {
      Name = var.web_app2_name
         } 
}

