resource "google_compute_network" "vpc_network" {
  name = var.name
  description = var.description
#   Thought this would be default
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.name}-subnetwork"
  description = var.description
#   TODO: pass this in
  ip_cidr_range = "10.0.1.0/25"
#   TODO: pass this in
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}
