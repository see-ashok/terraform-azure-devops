# -- variables.tf -- 

variable "aws_region" {
  type    = string
  default = "us-east-2"
}


variable "vpc_cidr_b" {
  default = "10.1.0.0/16"
}
