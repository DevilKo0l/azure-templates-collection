$rg = 'RG-ARM-001'
New-AzResourceGroup -Name $rg -Location westeurope -Force

# New-AzResourceGroupDeployment `
#     -Name 'new-storage' `
#     -ResourceGroupName $rg `
#     -TemplateFile 'storage.json' `
#     -storageAccountName 'appservice' `
#     -storageAccountSKU 'Standard_GRS'

New-AzResourceGroupDeployment `
    -Name 'storage-deployment' `
    -ResourceGroupName $rg `
    -TemplateFile 'resourcesTemplate.json' `
    -TemplateParameterFile 'resourcesTemplate.parameters.json'
    