# Example content for modules/vpc/outputs.tf
output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "public_subnet_names" {
  value = [for subnet in google_compute_subnetwork.public_subnets : subnet.name]
}

output "private_subnet_names" {
  value = [for subnet in google_compute_subnetwork.private_subnets : subnet.name]
}