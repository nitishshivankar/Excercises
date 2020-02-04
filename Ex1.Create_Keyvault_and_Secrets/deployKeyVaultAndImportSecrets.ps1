az login
$resourceGroupName = Read-Host "Enter resource group name : "
$currentFolderPath = Get-Location
$templatePath = $currentFolderPath.Path + "/Template.json"
az group create --name $resourceGroupName --location "West India"
az group deployment create --name keyVaultDeployment --resource-group $resourceGroupName --template-file $templatePath