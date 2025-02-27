variable "project_id" {
  description = "The GCP project ID for staging"
  type        = string
}

variable "region" {
  description = "The GCP region for staging"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC for staging"
  type        = string
  default     = "staging-vpc"
}

variable "public_subnets" {
  description = "Public subnets for staging"
  type = map(string)
  default = {
    "subnet-1" = "10.0.0.0/24"
    "subnet-2" = "10.0.1.0/24"
  }
}

variable "private_subnets" {
  description = "Private subnets for staging"
  type = map(string)
  default = {
    "subnet-1" = "10.0.2.0/24"
    "subnet-2" = "10.0.3.0/24"
    "subnet-3" = "10.0.4.0/24"
  }
}

variable "master_authorized_networks" {
  description = "Authorized networks for GKE master in staging"
  type = list(object({
    cidr_block   = string
    display_name = string
  }))
  default = [
    {
      cidr_block   = "192.168.1.0/24"
      display_name = "Office Network"
    },
    {
      cidr_block   = "10.0.0.0/16"
      display_name = "Internal Network"
    }
  ]
}

variable "environment" {
  description = "The environment (e.g., staging or production)"
  type        = string
  default     = "staging"
}

variable "ssh_user" {
  description = "The SSH public key for accessing the bastion host"
  type        = string
}

variable "allowed_ips" {
  description = "IP ranges allowed to access the bastion host"
  type        = list(string)
  default     = ["203.0.113.0/24", "192.168.1.0/24"]
}

variable "zone" {
  description = "The GCP zone for the bastion host"
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "The machine type for the bastion host"
  type        = string
  default     = "e2-micro"
}

variable "subnetwork" {
  description = "The subnetwork where the bastion host will be deployed"
  type        = string
}
