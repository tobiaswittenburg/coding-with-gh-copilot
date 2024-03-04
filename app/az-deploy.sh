# Create an environment variable
export SUBSCRIPTION_ID="99f41c0a-ec79-4bd0-90d6-4b0f59783f54"
export RESOURCE_GROUP_NAME="MSFT_Test_Copilot"
export LOCATION="west europe"
export APP_SERVICE_PLAN_NAME="Value"
export APP_NAME="MyFunnylittleMSFT_APP"

# Login to Azure
az login

# Set the Azure subscription
az account set --subscription $SUBSCRIPTION_ID

# Create a resource group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Create an App Service Plan
az appservice plan create --name $APP_SERVICE_PLAN_NAME --resource-group $RESOURCE_GROUP_NAME --sku B1 --is-linux

# Deploy the app to Azure
az webapp up --name $APP_NAME --resource-group $RESOURCE_GROUP_NAME --plan $APP_SERVICE_PLAN_NAME
