resource "google_compute_network" "vpc_network" {
  name = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "staging_subnet" {
  name          = "${var.network_name}-staging-subnet"
  ip_cidr_range = "10.10.0.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "prod_subnet" {
  name          = "${var.network_name}-prod-subnet"
  ip_cidr_range = "10.10.1.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}
