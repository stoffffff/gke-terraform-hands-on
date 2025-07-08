terraform {
  required_version = ">= 1.1"

  backend "gcs" {
    bucket  = "cybersapient-terraform-state-bucket"
    prefix  = "gke-flask-app/terraform/state"
  }
}
