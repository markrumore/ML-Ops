#!/bin/bash

# Variables (edit as needed)
RESOURCE_GROUP="aml-monitoring-rg"
WORKSPACE_NAME="aml-monitoring-ws"
LOCATION="eastus"
APP_INSIGHTS_NAME="aml-monitoring-ai"

# Create resource group
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create Azure ML workspace
az ml workspace create --name $WORKSPACE_NAME --resource-group $RESOURCE_GROUP --location $LOCATION

# Create Application Insights for monitoring
az monitor app-insights component create --app $APP_INSIGHTS_NAME --location $LOCATION --resource-group $RESOURCE_GROUP

# Link Application Insights to AML workspace
az ml workspace update --name $WORKSPACE_NAME --resource-group $RESOURCE_GROUP --application-insights $APP_INSIGHTS_NAME

echo "Azure ML workspace and monitoring setup complete."
