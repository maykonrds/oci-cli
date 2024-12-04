#!/bin/bash
profile="DEFAULT"
# List all instances
oci compute instance list --compartment-id $compartment_id --region us-phoenix-1 --query "data[*].{id:id,\"display-name\":\"display-name\"}" --profile $profile --output table
