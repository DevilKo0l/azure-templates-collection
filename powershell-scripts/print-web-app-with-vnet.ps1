# Define the desired output directory
$desiredOutputDirectory = "C:\Users\DevilWalker\Desktop"

# Check if the directory exists, if not, create it
if (-not (Test-Path $desiredOutputDirectory)) {
    New-Item -ItemType Directory -Path $desiredOutputDirectory
}

# Define the full output file path
$outputFilePath = Join-Path -Path $desiredOutputDirectory -ChildPath "AppServicesWithVNetIntegration.txt"

# Get all App Services in the subscription
$appServices = Get-AzWebApp

Write-Output "Checking $(($appServices).Count) App Services for VNet integration..."

# Check and clear the output file if it already exists
if (Test-Path $outputFilePath) {
    Remove-Item $outputFilePath
}

foreach ($app in $appServices) {
    # Check if VNetName exists under the properties
    if ($null -ne $app.VirtualNetworkSubnetId) {
        Write-Output "VNET integration found for web app: $($app.Name)"
        $output = "App Service Name: $($app.Name), VNet Integration ID: $($app.VirtualNetworkSubnetId)"
        $output | Out-File -Append -FilePath $outputFilePath
    }    
}

# Feedback to user
Write-Output "VNet Integration details for App Services have been saved to $outputFilePath (if any)"