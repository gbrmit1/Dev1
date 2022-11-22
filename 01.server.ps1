$rg = 'RM-ARM-RG-01'

New-AzResourceGroup -Name $rg -Location northeurope

New-AzResourceGroupDeployment `
-Name RM-Dev `
-ResourceGroupName RM-ARM-RG-01 `
-TemplateUri https://raw.githubusercontent.com/gbrmit1/Dev1/main/01.server.json `
-TemplateParameterUri https://raw.githubusercontent.com/gbrmit1/Dev1/main/01.server.parameters.json

Write-Host "
Finished Deployment Script!
"
