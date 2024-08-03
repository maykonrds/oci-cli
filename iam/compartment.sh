# To list all compartments, use the --profile global parameter. If you don't specify this parameter, the default profile will be used.
#!/bin/bash
profile="DEFAULT"
oci iam compartment list --compartment-id-in-subtree True --profile $profile --query "data[*].{Name:name,id:id}" --output table
