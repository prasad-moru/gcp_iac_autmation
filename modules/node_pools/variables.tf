# Example content for modules/node_pool/variables.tf
variable "project_id" {}
variable "cluster_name" {}
variable "region" {}

# Example content for modules/node_pool/outputs.tf
output "default_node_pool_name" {
  value = google_container_node_pool.default_node_pool.name
}

output "custom_node_pool_name" {
  value = google_container_node_pool.custom_node_pool.name
}