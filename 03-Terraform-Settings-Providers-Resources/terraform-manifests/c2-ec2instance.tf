# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-069aabeee6f53e7bf"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}