output "region_name" {
  value=var.region
}

output "vpc" {
  value = aws_vpc.web_app_vpc.id
}

output "subnet1" {
  value = aws_subnet.subnet1.id
}

output "subnet2" {
  value = aws_subnet.subnet2.id
}

output "keypairname" {
  value = data.aws_key_pair.mykey.id
}

output "web-app1-ip" {
  value = aws_instance.web_app1.private_ip
}

output "web-app2-ip" {
  value = aws_instance.web_app2.private_ip
}

