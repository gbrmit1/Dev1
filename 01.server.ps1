$rg = 'RM-ARM-RG-01'

New-AzResourceGroup -Name $rg -Location northeurope

# Deploy Network Resources

New-AzResourceGroupDeployment `
-Name RM-Dev `
-ResourceGroupName $rg `
-TemplateUri https://raw.githubusercontent.com/gbrmit1/Dev1/main/01.network.json `
-TemplateParameterUri https://raw.githubusercontent.com/gbrmit1/Dev1/main/01.network.parameters.json

Write-Host "
Clever Boy - Finished Deployment Network!
"

# Deploy Server Resources

New-AzResourceGroupDeployment `
-Name RM-Dev `
-ResourceGroupName $rg `
-TemplateUri https://raw.githubusercontent.com/gbrmit1/Dev1/main/01.server.json `
-TemplateParameterUri https://raw.githubusercontent.com/gbrmit1/Dev1/main/01.server.parameters.json

Write-Host "
Marvellous - Finished Deployment Server!
"
