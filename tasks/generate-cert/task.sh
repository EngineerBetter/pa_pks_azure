#!/usr/bin/env bash

set -euo pipefail

om --env env/"${ENV_FILE}" generate-certificate \
   --domains "${DOMAINS}" > cert.json

# The platform automation image doesn't have jq
# Please forgive me
bosh interpolate "files/${CERT_FILE}" \
  --vars-file=cert.json \
  > certificate/cert.yml
