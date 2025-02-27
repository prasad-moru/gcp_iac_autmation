# Example content for modules/bastion/main.tf
resource "google_compute_instance" "bastion" {
  name         = "${var.environment}-bastion"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork

    access_config {
      # Ephemeral public IP
    }
  }

  metadata = {
    ssh-keys = var.ssh_user
  }

  tags = ["bastion"]
}

resource "google_compute_firewall" "bastion_ssh" {
  name    = "${var.environment}-bastion-ssh"
  network = var.network

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["bastion"]
  source_ranges = var.allowed_ips
}