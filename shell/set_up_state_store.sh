#!/bin/bash
# Script to set up persistence of Terraform state in GCP Cloud Storage

# TODO: finish me
readonly PROJECT_NAME=''
readonly BUCKET_NAME="gs://${PROJECT_NAME}_terraform_state"

if ! gsutil ls -b "${BUCKET_NAME}" &> /dev/null; then
    # TODO: maybe gsutil to stat for state file(s)
    gsutil mb "${BUCKET_NAME}"
fi
