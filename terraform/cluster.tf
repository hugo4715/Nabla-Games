resource "google_container_cluster" "primary" {
  name               = "mc-cluster"
  location           = "europe-west9-a"
  initial_node_count = 3
 
  timeouts {
    create = "15m"
    update = "15m"
  }
}