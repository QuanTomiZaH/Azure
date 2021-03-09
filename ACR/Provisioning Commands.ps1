#before running commands, login on the subscription where you want to build this


# Create RG
az group create --name myResourceGroup --location eastus

# Create ACR
az acr create --resource-group myResourceGroup --name myContainerRegistry007 --sku 
  