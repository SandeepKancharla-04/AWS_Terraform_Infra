variable "project_name" {
  type    = string
  default = "aws-infra-demo"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_access_key" {
  type    = string
  default = "mock_access_key"
}

variable "aws_secret_key" {
  type    = string
  default = "mock_secret_key"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "private_cidrs" {
  type    = list(string)
  default = ["10.0.2.0/24"]
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for the app instance (e.g., ami-xxxxxxxxxxxxxxx)"
  type        = string
  default     = "ami-1234567890abcdef0"
}
