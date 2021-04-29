#!/bin/bash

#Check azurecli version
az --version

#Create webapp based on Docker Compose
if [! az webapp show --name $(WEBAPPNAME) --resource-group $(RESOURCEGROUP)] ;
    then
    az webapp create --resource-group $(RESOURCEGROUP) --plan $(APPSERVICEPLAN) --name $(WEBAPPNAME) --multicontainer-config-type compose --multicontainer-config-file docker-compose.yml
fi 
