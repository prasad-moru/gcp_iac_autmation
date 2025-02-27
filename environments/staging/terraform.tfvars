project_id = "staging-project-id"
region     = "us-central1"

vpc_name = "staging-vpc"

public_subnets = {
  "subnet-1" = "10.0.0.0/24"
  "subnet-2" = "10.0.1.0/24"
}

private_subnets = {
  "subnet-1" = "10.0.2.0/24"
  "subnet-2" = "10.0.3.0/24"
  "subnet-3" = "10.0.4.0/24"
}

master_authorized_networks = [
  {
    cidr_block   = "192.168.1.0/24"
    display_name = "Office Network"
  },
  {
    cidr_block   = "10.0.0.0/16"
    display_name = "Internal Network"
  }
]
