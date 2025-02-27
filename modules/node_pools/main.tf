resource "google_container_node_pool" "default_node_pool" {
  project       = var.project_id
  cluster       = var.cluster_name
  location      = var.region
  name          = "default-node-pool"

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 50
    preemptible  = false
  }

  autoscaling {
    min_node_count = 1
    max_node_count = 3
  }

  management {
    auto_upgrade = true
    auto_repair  = true
  }
}

resource "google_container_node_pool" "custom_node_pool" {
  project       = var.project_id
  cluster       = var.cluster_name
  location      = var.region
  name          = "custom-node-pool"

  node_config {
    machine_type = "n2-highmem-4"
    disk_size_gb = 100
    preemptible  = false
  }

  autoscaling {
    min_node_count = 2
    max_node_count = 5
  }

  management {
    auto_upgrade = true
    auto_repair  = true
  }
}