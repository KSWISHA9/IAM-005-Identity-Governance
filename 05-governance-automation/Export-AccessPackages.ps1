# Export-AccessPackages.ps1
Connect-MgGraph -Scopes "EntitlementManagement.Read.All"
New-Item -ItemType Directory -Force -Path "..\exports" | Out-Null
Get-MgEntitlementManagementAccessPackage -All |
    ConvertTo-Json -Depth 10 |
    Set-Content "..\exports\AccessPackages.json" -Encoding UTF8
Write-Host "Access packages exported." -ForegroundColor Green
