terraform {
  required_version = ">= 1.1"

  backend "gcs" {
    bucket  = "gke-terraform-state-bucket-demo"
    prefix  = "gke-demo/terraform/state"
  }
}
