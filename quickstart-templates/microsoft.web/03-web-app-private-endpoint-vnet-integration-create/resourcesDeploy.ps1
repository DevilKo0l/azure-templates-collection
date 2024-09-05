$rg = ''

New-AzResourceGroup -Name $rg -Location westeurope -Force

New-AzResourceGroupDeployment `
    -Name 'storage-deployment' `
    -ResourceGroupName $rg `
    -TemplateFile 'resourcesTemplate.json' `
    -TemplateParameterFile 'resourcesTemplate.parameters.json'