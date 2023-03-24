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
    cluster_ca_certificate = module.infra.cluster_cert_authority
    client_certificate = module.infra.cluster_cert_client
    client_key = module.infra.cluster_cert_client_key
    host = "https://${module.infra.cluster_location}-container.googleapis.com"
  }
}
