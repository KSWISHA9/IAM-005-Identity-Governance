# Export-PIMAssignments.ps1
Connect-MgGraph -Scopes "RoleManagement.Read.All","Directory.Read.All"
New-Item -ItemType Directory -Force -Path "..\exports" | Out-Null
Get-MgRoleManagementDirectoryRoleEligibilitySchedule -All |
    Select-Object PrincipalId, RoleDefinitionId, StartDateTime, EndDateTime |
    Export-Csv "..\exports\PIMEligibleAssignments.csv" -NoTypeInformation
Write-Host "PIM assignments exported." -ForegroundColor Green
