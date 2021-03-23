#!/bin/bash

# $1 is the sourceBranch of the project, the same branch of the pipeline will be triggered on another pipeline
# $2 is the system-access-token which is used for azure authentication
# $3 is the ID of the pipeline to trigger

location="https://dev.azure.com/<org>/<project>/_apis/build/builds?api-version=6.0"

data="{
    \"definition\": {
        \"id\": $3
    },
    \"sourceBranch\": \"$1\"
}"

echo 'below is the sourceBranch'
echo $1
echo 'below is the '
echo $3
echo $data

response=$(curl -H "Authorization: Bearer $2" --request POST $location --header "Content-Type: application/json" -d "$data")
echo $response