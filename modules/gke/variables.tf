variable "project_id" {}
variable "region" {}
variable "cluster_name" {}
variable "network" {}
variable "subnetwork" {}
variable "ip_range_pods" {}
variable "ip_range_services" {}
variable "master_authorized_networks" {
  type = list(object({
    cidr_block   = string
    display_name = string
  }))
}