provider "google" {
#   TODO: get this from a command
  project = "side-projects-290712"
#   Should be cheapest region see https://cloud.withgoogle.com/region-picker/
  region  = "us-central1"
  zone    = "us-central1-a"
}

data "google_billing_account" "account" {
  display_name = "My Billing Account"
#   Do we need this?
  open         = true
}

# TODO: need a SA to do this
# resource "google_billing_budget" "budget" {
#   billing_account = data.google_billing_account.account.id
#   display_name = "My budget"
#   amount {
#     specified_amount {
#       currency_code = "GBP"
#       units = "30"
#     }
#   }
#   threshold_rules {
#       threshold_percent =  0.5
#   }
# }

# # TODO: refactor this from provider, also do we even need this
# resource "google_project" "my_project" {
#   name       = "side-projects"
#   project_id = "side-projects-290712"
# #   TODO: don't have an organization
# #   org_id     = "1234567"

#   billing_account = data.google_billing_account.acct.id
# }

# For subnets 10.0.0.0/8 may conflict with 'default' VPC network
# try 172.16.0.0/12 range i.e. 172.16.0.0/24, 172.16.1.0/24 ...

# # TODO: a first VPC network with subnet in main region
# module "vpc" {
#    source  = "./modules/vpc_network"
#    name = "myvpc"
#    description = "myvpc description"
# }
