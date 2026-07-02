# Audit-IdentityGovernance.ps1
Connect-MgGraph -Scopes "RoleManagement.Read.All","EntitlementManagement.Read.All","Directory.Read.All"
New-Item -ItemType Directory -Force -Path "..\exports" | Out-Null
$Lines = @()
$Lines += "# Identity Governance Audit Report"
$Lines += ""
$Lines += "Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
$Lines += ""
$Lines += "---"
$Lines += ""
$Lines += "## PIM Eligible Assignments"
$Lines += ""
$PIM = Get-MgRoleManagementDirectoryRoleEligibilitySchedule -All
$Lines += "Total eligible assignments: $($PIM.Count)"
$Lines += ""
$Lines += "---"
$Lines += ""
$Lines += "## Access Packages"
$Lines += ""
$Packages = Get-MgEntitlementManagementAccessPackage -All
$Lines += "Total access packages: $($Packages.Count)"
$Lines += ""
foreach ($P in $Packages) { $Lines += "- $($P.DisplayName)" }
$Lines | Set-Content "..\exports\GovernanceAuditReport.md" -Encoding UTF8
Write-Host "Governance audit report written." -ForegroundColor Green
