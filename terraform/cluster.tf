resource "google_service_account" "default" {
  account_id   = "service-account-1"
  display_name = "Service Account 1"
}

resource "google_container_cluster" "primary" {
  name               = "mc-cluster"
  location           = "eu-central1-c"
  initial_node_count = 3
  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.default.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
  timeouts {
    create = "15m"
    update = "15m"
  }
}