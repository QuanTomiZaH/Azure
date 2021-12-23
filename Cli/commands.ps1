New-AzResourceGroup `
    -Name <name> `
    -Location "westeurope"


1. Open powershell and login to Azure
    <!-- az login -->
2. Create a resource group in Azure
    <!-- az group create --name <resourcegroupname> --location <locationname> -->
3. Create a service principal within the RG for aks
    <!-- az ad sp create-for-rbac --skip-assignment --name <myAKSClusterServicePrincipal> -->
4. Edit all necessary parameters in the "deploy.ps1" script
5. Login to Azure with powershell on the correct subscription
    <!-- az account set --subscription <subscriptionname> -->
6. Run the powershell script "deploy.ps1"