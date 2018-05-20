#!/bin/sh

# Defining env vars for Packer
export PACKER_LOG=7
export PACKER_LOG_PATH=~/devops/packer/packer.log
export PROJECT_ID=cedar-card-200213
export PATH=$PATH:~/devops/packer

# Defining variables
PACKER_DIR=~/devops/packer
REPO_DIR=packer-demo-jenkins
RUN_DIR=${PACKER_DIR}/${REPO_DIR}

# Build Packer image
cd ${RUN_DIR}
packer build -force nginx-ubuntu-gcp.json

# The next line updates PATH for the Google Cloud SDK (gcloud commands)
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then source '~/google-cloud-sdk/path.bash.inc'; fi

# List image
echo; echo "Listing the Packer image created in GCP"
gcloud compute images list | grep jenkins
