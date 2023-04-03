resource "google_compute_network" "vpc_network" {
  name = var.name
  description = var.description
#   Thought this would be default
  auto_create_subnetworks = false
#   routing_mode
#   mtu for jumbo frames
#   delete_default_routes_on_create - should we bother messing with routing in GCP?
}

# Split environment by subnet for now

# TODO: start with two subnets
resource "google_compute_subnetwork" "development_subnet" {
  name          = "${var.name}-subnetwork"
  description = var.description
#   TODO: pass this in
  ip_cidr_range = "172.16.0.0/24"
#   TODO: pass this in
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id

#   private_ip_google_access
}

resource "google_compute_subnetwork" "production_subnet" {
  name          = "${var.name}-subnetwork"
  description = var.description
#   TODO: pass this in
  ip_cidr_range = "172.16.1.0/24"
#   TODO: pass this in
  region        = "us-west1"
  network       = google_compute_network.vpc_network.id

#   private_ip_google_access
}
