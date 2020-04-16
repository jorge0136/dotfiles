#!/usr/bin/env bash
set -euo pipefail

echo
echo "Starting to install gcloud"
echo

# Use the interactive gcloud installer.
curl https://sdk.cloud.google.com | bash
