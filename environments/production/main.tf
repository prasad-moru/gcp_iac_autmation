module "vpc" {
  source          = "../../modules/vpc"
  project_id      = var.project_id
  region          = var.region
  vpc_name        = "production-vpc"
  public_subnets  = {
    "subnet-1" = "10.1.0.0/24"
    "subnet-2" = "10.1.1.0/24"
  }
  private_subnets = {
    "subnet-1" = "10.1.2.0/24"
    "subnet-2" = "10.1.3.0/24"
    "subnet-3" = "10.1.4.0/24"
  }
}

module "gke" {
  source          = "../../modules/gke"
  project_id      = var.project_id
  region          = var.region
  cluster_name    = "production-cluster"
  network         = module.vpc.vpc_name
  subnetwork      = module.vpc.private_subnet_names[0]
  ip_range_pods   = "production-pods"
  ip_range_services = "production-services"
  master_authorized_networks = var.master_authorized_networks
  environment     = "production"
}

module "node_pool" {
  source          = "../../modules/node_pool"
  project_id      = var.project_id
  cluster_name    = module.gke.gke_cluster_name
  region          = var.region
}

module "bastion" {
  source          = "../../modules/bastion"
  project_id      = var.project_id
  region          = var.region
  network         = module.vpc.vpc_name
  subnetwork      = module.vpc.public_subnet_names[0]
  zone            = "${var.region}-a"
  machine_type    = "e2-micro"
  ssh_user        = "ssh-rsa AAAAB3NzaC1yc2E... your-public-key"
  allowed_ips     = ["203.0.113.0/24", "192.168.1.0/24"] # Example IP ranges
  environment     = "production"
}
