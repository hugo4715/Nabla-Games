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
  project = var.google_project_id
  region  = "europe-west9"
  zone    = "europe-west9-a"
}
