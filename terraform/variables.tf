variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}

variable "project_name" {
  type    = string
  default = "terraform-training"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "iam_role_name" {
  type    = string
  default = "ec2-ssm-role"
}

variable "instance_profile_name" {
  type    = string
  default = "ec2-ssm-profile"
}

variable "key_name" {
  description = "EC2 Key Pair name for SSH access"
  type        = string
}