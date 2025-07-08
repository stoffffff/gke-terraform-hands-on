resource "google_container_cluster" "primary" {
  name     = "cool-gke-cluster"
  location = "europe-west1-b"  

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "default-node-pool"
  cluster    = google_container_cluster.primary.name
  location   = google_container_cluster.primary.location
  node_count = 1

  node_config {
    machine_type = "e2-medium"

    disk_type    = "pd-balanced"
    disk_size_gb = 30

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]

  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
}
