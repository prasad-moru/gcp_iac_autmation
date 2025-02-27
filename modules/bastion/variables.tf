variable "environment" {}
variable "machine_type" {
  default = "e2-micro"
}
variable "project_id" {}
variable "zone" {}
variable "network" {}
variable "subnetwork" {}
variable "ssh_user" {}
variable "allowed_ips" {
  type = list(string)
}
