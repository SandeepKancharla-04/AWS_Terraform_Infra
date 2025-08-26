variable "project_name" { type = string }
variable "vpc_id" { type = string }
variable "private_subnets" { type = list(string) }
variable "instance_type" { type = string }
variable "ami_id" { type = string }
