provider "google" {
  project = "FILL ME IN"
  // Should be cheapest region see https://cloud.withgoogle.com/region-picker/
  region  = "us-central1"
  zone    = "us-central1-a"
}

# TODO: a first VPC network with subnet in main region
