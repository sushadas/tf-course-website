terraform {

  backend "gcs" {
    bucket = "roidtc-projects-222-tf-state"
    prefix = "terraform/state"
  }


  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.41.0"
    }
  }
}


provider "google" {

  project = var.project_id

}
