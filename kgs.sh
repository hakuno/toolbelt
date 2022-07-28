#!/bin/bash
SECRET_NAME="$1"

if [ "${SECRET_NAME}" = "" ]
then
    echo -e "\xE2\x9B\x94 No secret name input."
    exit 1
fi

kubectl get secret $SECRET_NAME -o json | jq '.data' | jq 'map_values(@base64d)'