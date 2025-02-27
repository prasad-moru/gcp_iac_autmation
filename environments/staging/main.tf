module "vpc" {
  source          = "../../modules/vpc"
  project_id      = var.project_id
  region          = var.region
  vpc_name        = "staging-vpc"
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "gke" {
  source          = "../../modules/gke"
  project_id      = var.project_id
  region          = var.region
  environment     = "staging"
  cluster_name    = "staging-cluster"
  network         = module.vpc.vpc_name
  subnetwork      = module.vpc.private_subnet_names[0]
  ip_range_pods   = "staging-pods"
  ip_range_services = "staging-services"
  master_authorized_networks = var.master_authorized_networks
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
  environment     = var.environment
  network         = module.vpc.vpc_name
  subnetwork      = module.vpc.public_subnet_names[0]
  zone            = var.zone
  machine_type    = var.machine_type
  ssh_user        = var.ssh_user
  allowed_ips     = var.allowed_ips
}
