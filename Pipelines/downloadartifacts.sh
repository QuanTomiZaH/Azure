#bin/sh

#the following is an example to download the most recent pipeline artifact from a specific pipeliney
#Solution:
token=<token>
username=<username>
curl -u $username:$token "https://dev.azure.com/<org>/<project>/_apis/build/builds?definitions=<pipelinenumber>" > json-invalid.json
idnumber=$(cat json-invalid.json | tr -d " \t\n\r" | sed "s/],}/]}/g" | sed 's/\"\\\"/\"\"/' | jq '.value[0].id')
downloadlink=$(curl -u $username:$token "https://dev.azure.com/<org>/<project>/_apis/build/builds/$idnumber/artifacts?artifactName=<artifactname>&api-version=6.0" | jq '.resource.downloadUrl'| sed 's/\"//g')
curl -u $username:$token $downloadlink --output artifact.zip