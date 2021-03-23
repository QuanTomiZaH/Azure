#!/bin/bash

location="https://dev.azure.com/<organization>/<project>/_apis/build/builds?api-version=6.0"

data="{
    \"definition\": {
        \"id\": <number>
    },
    \"sourceBranch\": \"$1\"
}"

echo 'below is the sourceBranch'
echo $1

response=$(curl -H "Authorization: Bearer $2" --request POST $location --header "Content-Type: application/json" -d "$data")
echo $response