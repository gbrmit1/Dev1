$rg = 'RM-ARM-RG-01'
New-AzResourceGroup -Name $rg -Location northeurope

New-AzResourceGroupDeployment -Name RM-Dev -ResourceGroupName RM-ARM-RG-01 -TemplateFile /home/mitchell/01.server.json -TemplateParameterFile /home/mitchell/01.server.parameters.json