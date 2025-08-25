resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-staging-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "private" {
  name          = "${var.project_id}-private-subnet"
  ip_cidr_range = var.private_cidr
  region        = var.region
  network       = google_compute_network.vpc.id
}