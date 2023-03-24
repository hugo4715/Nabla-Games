terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.9.0"
    }
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "google" {
  project = variable.google_project_id
  region  = "eu-central1"
  zone    = "eu-central1-c"
}
