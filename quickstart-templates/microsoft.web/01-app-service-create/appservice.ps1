$rg = 'RG-AppService-001'
New-AzResourceGroup -Name $rg -Location westeurope -Force

New-AzResourceGroupDeployment `
    -Name 'appservice-deployment' `
    -ResourceGroupName $rg `
    -TemplateFile 'appservice.json' `
    -TemplateParameterFile 'appservice.parameters.json'