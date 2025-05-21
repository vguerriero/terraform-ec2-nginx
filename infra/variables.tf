variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ami" {
  type        = string
  description = "AMI ID to use for EC2 instance"
}
