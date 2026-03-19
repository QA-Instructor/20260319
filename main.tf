variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_02_23da9b4301ab-867-23540-30985"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc" {
  name                    = "example-vpc-victoria"
  auto_create_subnetworks = true 
}
