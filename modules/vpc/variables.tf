variable "private_subnets" {
  type = map(string)
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "public_subnets" {
  description = "Map of public subnet CIDR ranges"
  type        = map(string)
}

variable "private_subnets" {
  description = "Map of private subnet CIDR ranges"
  type        = map(string)
}
