variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-west1"
}

variable "gke_cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "cool-gke-cluster"
}

variable "network_name" {
  description = "VPC network name"
  type        = string
  default     = "flask-app-network"
}
