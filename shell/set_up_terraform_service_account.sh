#!/bin/bash
# Script to set up Service Account for Terraform to use,
# can't use Terraform to create this as we need this SA for Terraform to use

readonly SA_NAME='terraform-robot'
# TODO: use command to get this
readonly PROJECT_ID=''
readonly SA_EMAIL="${SA_NAME}@${side-projects-290712.iam.gserviceaccount.com}"

if [[ ! -s roles.txt ]]; then
    echo "Roles file doesn't exist or is empty, exiting..."
    exit 1
fi

# You are meant to get the email back from the command but I didn't
gcloud iam service-accounts create "${SA_NAME}" \
    --description='Terraform robot' \
    --display-name='Terraform robot'

while read role; do
    echo "${role}"
done < <(cat roles.txt)
