resource "google_compute_network" "vpc_network" {
  name = var.name
  description = var.description
#   Thought this would be default
  auto_create_subnetworks = false
}
