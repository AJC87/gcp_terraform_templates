#!/bin/bash
# Script to set up persistence of Terraform state in GCP Cloud Storage

# TODO: finish me
readonly PROJECT_NAME=''

# TODO: create bucket to store state if doesn't exist
# maybe gsutil to see if bucket exists and stat for state file(s)
gsutil mb "gs://${PROJECT_NAME}_terraform_state"
