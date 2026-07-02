# IAM-005 - Enterprise Identity Governance

> OmniVerse Enterprise Engineering Portfolio

## Overview

This repository documents the design, implementation, validation, automation, and operational handoff of a Microsoft Entra ID Identity Governance deployment for the OmniVerse environment.

Identity Governance extends the Zero Trust foundation built in IAM-004 by layering privileged access management, entitlement automation, access certification, and governance reporting on top of the existing Conditional Access baseline.

---

## Business Scenario

OmniVerse completed its Zero Trust Conditional Access deployment and identified significant governance gaps — permanent administrator assignments, no access request workflows, no recurring certification campaigns, and no privileged access audit trail.

The IAM Engineering team was tasked with designing and deploying a full Microsoft Entra Identity Governance program to address these gaps before the environment moves into production.

---

## Engagement Phases

| Phase | Description |
|---|---|
| [01 - Current State Assessment](01-current-state-assessment/README.md) | Governance inventory, security findings, maturity assessment |
| [02 - PIM Deployment](02-pim-deployment/README.md) | Just-In-Time privileged access, eligible assignments, approval workflows |
| [03 - Entitlement Management](03-entitlement-management/README.md) | Catalogs, access packages, approval chains, lifecycle management |
| [04 - Access Reviews](04-access-reviews/README.md) | Quarterly certification campaigns, reviewer assignment, auto-remediation |
| [05 - Governance Automation](05-governance-automation/README.md) | PowerShell export and audit scripts |
| [06 - Operational Handoff](06-operational-handoff/README.md) | Runbook, quarterly operations, future roadmap |
| [Governance Design](docs/) | SoD matrix, PIM workflow, operating model |

---

## Engagement Flow

```mermaid
flowchart LR
    A[01\nAssessment] --> B[02\nPIM]
    B --> C[03\nEntitlement]
    C --> D[04\nAccess Reviews]
    D --> E[05\nAutomation]
    E --> F[06\nHandoff]
```

---

## Technical Implementation

### Privileged Identity Management

| Capability | Configuration |
|---|---|
| Assignment Type | Eligible |
| MFA on Activation | Required |
| Business Justification | Required |
| Approval Workflow | Security Team |
| Maximum Duration | 4 Hours |
| Notifications | Email Enabled |

### Entitlement Management

| Component | Configuration |
|---|---|
| Catalog | Enterprise Resources Catalog |
| Access Package | Engineering Onboarding |
| Approval Policy | Manager approval required |
| Lifecycle Policy | 90-day expiration with review |

### Access Reviews

| Setting | Value |
|---|---|
| Frequency | Quarterly |
| Reviewers | Managers and Resource Owners |
| Decision Helpers | Enabled |
| Auto Apply Results | Enabled |
| Default Decision | Deny |

### Governance Design

| Document | Purpose |
|---|---|
| [Separation of Duties Matrix](docs/01-Separation-of-Duties-Matrix.md) | Role conflict identification and prevention |
| [Privileged Identity Workflow](docs/02-Privileged-Identity-Workflow.md) | End-to-end JIT access lifecycle |
| [Identity Governance Operating Model](docs/03-Identity-Governance-Operating-Model.md) | Governance program structure and principles |

---

## Governance Principles

| Principle | Application |
|---|---|
| Verify Explicitly | MFA and justification required at every activation |
| Least Privilege | No standing admin access — eligible assignments only |
| Just-In-Time Administration | Roles activated on demand, expire automatically |
| Continuous Verification | Quarterly reviews and continuous audit logging |

---

## Screenshot Evidence

### Privileged Identity Management

| Screenshot | Description |
|---|---|
| 04-pim-roles.png | Microsoft Entra PIM roles overview |
| 05-pim-global-administrator-role.png | Global Administrator role selected for PIM |
| 06-pim-eligible-role-assignment.png | Eligible assignment configuration |
| 07-pim-activation-settings.png | Activation settings including MFA and duration |
| 19-pim-role-assignments.png | PIM role assignments confirmed |
| 20-pim-role-settings-summary.png | Final PIM role settings summary |

### Entitlement Management

| Screenshot | Description |
|---|---|
| 09-identity-governance-catalog.png | Enterprise Resources Catalog created |
| 10-access-package-basics.png | Access package basic configuration |
| 11-access-package-resource-roles.png | Resource roles assigned to the package |
| 12-access-package-request-policy.png | Request and approval policy configured |
| 13-access-package-lifecycle-review.png | Lifecycle and review policy configured |
| 14-access-package-summary.png | Access package summary and confirmation |

### Access Reviews

| Screenshot | Description |
|---|---|
| 15-create-access-review.png | Access review creation workflow |
| 16-access-review-schedule.png | Quarterly review schedule configured |
| 17-access-review-settings.png | Reviewer settings and decision helpers |
| 18-access-review-summary.png | Access review summary and confirmation |

---

## Skills Demonstrated

- Microsoft Entra Identity Governance
- Privileged Identity Management (PIM)
- Just-In-Time Access Design
- Entitlement Management and Access Packages
- Catalog Design and Resource Governance
- Access Review Campaign Management
- Separation of Duties Governance
- Approval Workflow Configuration
- Microsoft Graph PowerShell Automation
- Zero Trust Identity Principles

---

## Related Projects

| Project | Description |
|---|---|
| [IAM-001 Hybrid Identity](https://github.com/KSWISHA9/hybrid-identity-engineering) | Active Directory and Microsoft Entra Connect |
| [IAM-002 Identity Lifecycle](https://github.com/KSWISHA9/IAM-002-Identity-Lifecycle-Automation) | Joiner-Mover-Leaver automation |
| [IAM-003 Enterprise SSO](https://github.com/KSWISHA9/enterprise-application-onboarding-sso) | Enterprise application onboarding |
| [IAM-004 Zero Trust](https://github.com/KSWISHA9/IAM-004-Conditional-Access-Zero-Trust) | Conditional Access baseline |

---

Created by **Keshawn Lynch**
