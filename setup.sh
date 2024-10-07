#!/bin/bash

######################################################################################
# Created by Avishay & Ori
# Purpose: Script deploys details_app in a kubernetes env. using helm.
# Date: 06/10/2024
# Version: 1.0.1
# set -x          # Enable debug mode
set -o errexit  # Exit on any command failing
set -o pipefail # Return non-zero status if any part of a pipeline fails
######################################################################################

# Getting the private key file to encrypt the values file, and create a decrypted one in the details_app helm folder
curl -s -L https://tinyurl.com/ypm9nkwc -o private.key 

# For BASH script, import the private key to be able to decrypt the values file 
gpg --import private.key

# Decrypting the values file, to a one with decrypted values
sops -d values_encrypted.yaml > details_app/values.yaml

helm install detailsapp details_app

rm -rf private.key
