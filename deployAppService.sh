#!/bin/bash
echo on
#Check azurecli version
az --version

#Create webapp based on Docker Compose
if ! [ az webapp show --name "react-webapp" --resource-group "react-app-rg" ]; then
    az webapp create --resource-group "react-app-rg" --plan "react-app-service-plan" --name "react-webapp" --multicontainer-config-type 'compose' --multicontainer-config-file 'docker-compose.yml'
fi
