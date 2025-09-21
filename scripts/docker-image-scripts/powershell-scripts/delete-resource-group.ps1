$subscriptions = Get-AzSubscription -Tenant 16b3c013-d300-468d-ac64-7eda0820b6d3
$numberSubscription = $subscriptions.Count


# $resourceGroups = (Get-AzResourceGroup).Remove-AzResourceGroup
Write-Output("Subscription list: ")
for($i = 0;$i -le $numberSubscription-1;$i++)
{
    Write-Host ("{0}. {1}" -f $i,($subscriptions)[$i].Name)
}

$userInput = Read-Host("Please enter the number of subscription")


Write-Host("Resources group for subscription {0} is: " -f ($subscriptions)[$userInput].Name)

$numberResourceGroup = ($subscriptions)[$userInput]

for($i = 0;$i -le $numberSubscription-1;$i++)
{
    Write-Host ("{0}. {1}" -f $i,($subscriptions)[$i].Name)
}

# Write-Output($subscriptions)

# foreach($subscription in $subscriptions)
# {
#     Write-Output $subscription.GetType()
# }

# foreach($resourceGroup in $resourceGroups)
# {
#     Write-Output ($resourceGroups).ResourceGroupName
# }

# $userSelect = Read-Host "Please enter the number in resource group: "

# $rg = 'RG-myrg-euw'
# Remove-AzResourceGroup -Name $rg