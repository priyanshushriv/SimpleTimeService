variable "vpc_id" {
  description = "The ID of the VPC in which to create the EKS cluster."
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"] 
}

variable "azs" {
  type    = list(string)
  description = "A list of availability zones in the region."
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]  
}


variable "single_nat_gateway" {
  description = "Specify whether to use a single NAT gateway."
  type        = bool
}


