# Create an image with nginx installed in GCP

Sample packer scripts provided for generating:
- Ubuntu image with NGINX installed

## Prerequisites

Enable Packer logger:
```
export PACKER_LOG=7
export PACKER_LOG_PATH="/Users/cipcirip/devops/packer/packer.log"
```
Cloud Project ID defined as environment variable:
```
export PROJECT_ID="cedar-card-200213"
```

## Getting it done

cd into the directory where you have the shell script and packer json file and run the shell script or the issue the packer command to build the image:

```
./packer-run-script.sh
```
or
```
packer build -force packer_file.json
```
