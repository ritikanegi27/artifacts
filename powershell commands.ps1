# create a new resource group
New-AzureRmResourceGroup -Name ExampleResourceGroup -Location "West Europe"

# deploy the template to the resource group
New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName ExampleResourceGroup -TemplateFile azuredeploy.json

#List of all resource providers
Get-AzureRmResourceProvider -ListAvailable

#To see the resource types for a particular provider
(Get-AzureRmResourceProvider -ProviderNamespace Microsoft.Compute).ResourceTypes

#apiversions selection
((Get-AzureRmResourceProvider -ProviderNamespace Microsoft.Network).ResourceTypes | Where-Object ResourceTypeName -eq publicIPAddresses).ApiVersions
