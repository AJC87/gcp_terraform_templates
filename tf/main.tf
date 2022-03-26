provider "google" {
  project = "side-projects-290712"
  // Should be cheapest region see https://cloud.withgoogle.com/region-picker/
  region  = "us-central1"
  zone    = "us-central1-a"
}

# TODO: a first VPC network with subnet in main region
module "vpc" {
   source  = "./modules/vpc_network"
   name = "myvpc"
   description = "myvpc description"
}
