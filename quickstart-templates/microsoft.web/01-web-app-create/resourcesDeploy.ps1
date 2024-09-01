$rg = 'RG-AppService-001'

New-AzResourceGroup -Name $rg -Location westeurope -Force

New-AzResourceGroupDeployment `
    -Name 'web-app-deployment' `
    -ResourceGroupName $rg `
    -TemplateFile 'resourcesTemplate.json' `
    -TemplateParameterFile 'resourcesTemplate.parameters.json'