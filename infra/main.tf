
provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  user_data = <<-USERDATA
              #!/bin/bash
              apt-get update -y
              apt-get install -y nginx
              echo "Hello from Terraform" > /usr/share/nginx/html/index.html
              systemctl enable nginx
              systemctl start nginx
              USERDATA

  tags = {
    Name = "terraform-ec2-nginx"
  }
}
