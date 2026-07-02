# 05 - Governance Automation

**Previous:** [04 - Access Reviews](../04-access-reviews/README.md) | **Next:** [06 - Operational Handoff](../06-operational-handoff/README.md)

---

## Purpose

PowerShell scripts automate governance reporting and audit evidence generation. These scripts allow the IAM team to produce compliance-ready exports without manual portal work.

---

## Scripts

| Script | Purpose |
|---|---|
| [Export-PIMAssignments.ps1](Export-PIMAssignments.ps1) | Exports all PIM eligible and active assignments |
| [Export-AccessReviews.ps1](Export-AccessReviews.ps1) | Exports access review results and decisions |
| [Export-AccessPackages.ps1](Export-AccessPackages.ps1) | Exports entitlement management access packages |
| [Export-Catalogs.ps1](Export-Catalogs.ps1) | Exports catalog and resource configurations |
| [Audit-IdentityGovernance.ps1](Audit-IdentityGovernance.ps1) | Generates a full governance audit Markdown report |

---

## Output Formats

- CSV — for spreadsheet review and compliance evidence
- JSON — for full configuration backup and automation
- Markdown — for governance reports and handoff documentation

---

## Prerequisites

```powershell
Install-Module Microsoft.Graph -Scope CurrentUser
Connect-MgGraph -Scopes "RoleManagement.Read.All","AccessReview.Read.All","EntitlementManagement.Read.All","Directory.Read.All"
```

---

## Usage

```powershell
.\Export-PIMAssignments.ps1
.\Export-AccessReviews.ps1
.\Export-AccessPackages.ps1
.\Export-Catalogs.ps1
.\Audit-IdentityGovernance.ps1
```

Outputs are written to the `exports\` folder.
