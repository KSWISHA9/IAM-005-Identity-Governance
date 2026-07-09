# IAM-005 - Enterprise Identity Governance

> OmniVerse Enterprise Engineering Portfolio

## Overview

This repository documents the design, implementation, validation, automation, and operational handoff of a Microsoft Entra ID Identity Governance deployment for the OmniVerse environment.

Identity Governance extends the Zero Trust foundation built in IAM-004 by layering privileged access management, entitlement automation, access certification, and governance reporting on top of the existing Conditional Access baseline.

---

## Business Scenario

OmniVerse completed its Zero Trust Conditional Access deployment and identified significant governance gaps — permanent administrator assignments, no access request workflows, no recurring certification campaigns, and no privileged access audit trail.

The IAM Engineering team was tasked with designing and deploying a full Microsoft Entra Identity Governance program to address these gaps before broader user onboarding.

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

## Evidence Links

- [View all screenshots](screenshots/)
- [Review the PIM deployment evidence](02-pim-deployment/README.md)
- [Review the entitlement management evidence](03-entitlement-management/README.md)
- [Review the access review evidence](04-access-reviews/README.md)
- [Review the governance design documents](docs/)

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

## Evidence Gallery

The screenshots below show the key governance build evidence. The complete evidence set is available in the [screenshots folder](screenshots/).

### Privileged Identity Management

#### PIM Roles Overview

![PIM roles overview](screenshots/04-pim-roles.png)

Shows the Microsoft Entra PIM role inventory used to identify privileged roles for governance.

#### Global Administrator Role

![Global Administrator role selected for PIM](screenshots/05-pim-global-administrator-role.png)

Shows the Global Administrator role selected for privileged access governance.

#### Eligible Role Assignment

![Eligible role assignment](screenshots/06-pim-eligible-role-assignment.png)

Shows eligible assignment configuration so privileged access is available only when activated.

#### Activation Settings

![PIM activation settings](screenshots/07-pim-activation-settings.png)

Shows activation requirements including MFA, justification, activation duration, and approval controls.

#### PIM Role Assignments

![PIM role assignments](screenshots/19-pim-role-assignments.png)

Shows privileged role assignments after PIM configuration.

#### PIM Role Settings Summary

![PIM role settings summary](screenshots/20-pim-role-settings-summary.png)

Shows the final role settings summary used to validate the PIM deployment.

### Entitlement Management

#### Identity Governance Catalog

![Identity governance catalog](screenshots/09-identity-governance-catalog.png)

Shows the Enterprise Resources Catalog created for access package governance.

#### Access Package Basics

![Access package basics](screenshots/10-access-package-basics.png)

Shows the access package baseline configuration.

#### Access Package Resource Roles

![Access package resource roles](screenshots/11-access-package-resource-roles.png)

Shows resource roles assigned to the access package.

#### Access Package Request Policy

![Access package request policy](screenshots/12-access-package-request-policy.png)

Shows the request and approval policy configured for entitlement access.

#### Lifecycle Review Policy

![Access package lifecycle review](screenshots/13-access-package-lifecycle-review.png)

Shows lifecycle expiration and review policy settings for access packages.

#### Access Package Summary

![Access package summary](screenshots/14-access-package-summary.png)

Shows the final access package summary before deployment.

### Access Reviews

#### Create Access Review

![Create access review](screenshots/15-create-access-review.png)

Shows the access review creation workflow used to start certification campaigns.

#### Access Review Schedule

![Access review schedule](screenshots/16-access-review-schedule.png)

Shows the quarterly review schedule configured for recurring governance.

#### Access Review Settings

![Access review settings](screenshots/17-access-review-settings.png)

Shows reviewer settings, decision helpers, and remediation behavior.

#### Access Review Summary

![Access review summary](screenshots/18-access-review-summary.png)

Shows the final access review summary and confirmation before deployment.

---

## Technical Implementation

### Privileged Identity Management

| Control | What It Does | Evidence |
|---|---|---|
| Eligible role assignment | Removes standing privileged access by requiring users to activate roles only when needed. | [Screenshot](screenshots/06-pim-eligible-role-assignment.png) |
| MFA on activation | Forces strong authentication before privileged roles can be activated. | [Screenshot](screenshots/07-pim-activation-settings.png) |
| Business justification | Requires users to document why privileged access is needed. | [Screenshot](screenshots/07-pim-activation-settings.png) |
| Approval workflow | Routes privileged activation requests through the security team. | [PIM deployment](02-pim-deployment/README.md) |
| Four-hour activation window | Limits privileged access duration and automatically expires elevated permissions. | [Screenshot](screenshots/20-pim-role-settings-summary.png) |

### Entitlement Management

| Control | What It Does | Evidence |
|---|---|---|
| Enterprise Resources Catalog | Groups governed resources into a controlled access request catalog. | [Screenshot](screenshots/09-identity-governance-catalog.png) |
| Engineering Onboarding access package | Provides a repeatable access bundle for onboarding scenarios. | [Screenshot](screenshots/10-access-package-basics.png) |
| Manager approval | Requires approval before users receive access package assignments. | [Screenshot](screenshots/12-access-package-request-policy.png) |
| 90-day expiration and review | Prevents stale access by requiring renewal and review after a defined period. | [Screenshot](screenshots/13-access-package-lifecycle-review.png) |

### Access Reviews

| Control | What It Does | Evidence |
|---|---|---|
| Quarterly review cadence | Creates recurring certification campaigns for privileged and business access. | [Screenshot](screenshots/16-access-review-schedule.png) |
| Manager and resource owner reviewers | Assigns certification decisions to the people closest to the access need. | [Screenshot](screenshots/17-access-review-settings.png) |
| Decision helpers | Gives reviewers sign-in and recommendation context during certification. | [Screenshot](screenshots/17-access-review-settings.png) |
| Auto-apply results | Applies review outcomes without requiring manual cleanup. | [Screenshot](screenshots/18-access-review-summary.png) |
| Default decision: deny | Reduces access risk when reviewers do not explicitly approve continued access. | [Screenshot](screenshots/18-access-review-summary.png) |

### Governance Design

| Document | Purpose |
|---|---|
| [Separation of Duties Matrix](docs/01-Separation-of-Duties-Matrix.md) | Role conflict identification and prevention |
| [Privileged Identity Workflow](docs/02-Privileged-Identity-Workflow.md) | End-to-end JIT access lifecycle |
| [Identity Governance Operating Model](docs/03-Identity-Governance-Operating-Model.md) | Governance program structure and principles |

---

## What This Proves

- Designed a governance model that removes permanent administrator access.
- Built PIM controls for just-in-time activation, MFA, justification, approval, and time-bound elevation.
- Created entitlement management workflows for access packages, manager approval, expiration, and lifecycle review.
- Configured recurring access reviews with reviewer assignment, decision helpers, and automatic remediation.
- Documented separation of duties, privileged access workflow, operating model, automation, and handoff.

---

## Governance Principles

| Principle | Application |
|---|---|
| Verify Explicitly | MFA and justification required at every activation |
| Least Privilege | No standing admin access — eligible assignments only |
| Just-In-Time Administration | Roles activated on demand, expire automatically |
| Continuous Verification | Quarterly reviews and continuous audit logging |

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
| [IAM-001 Hybrid Identity](https://github.com/KSWISHA9/IAM-001-Hybrid-Identity-Engineering) | Active Directory and Microsoft Entra Connect |
| [IAM-003 Identity Lifecycle](https://github.com/KSWISHA9/IAM-003-Identity-Lifecycle-Automation) | Joiner-Mover-Leaver automation |
| [IAM-002 Enterprise SSO](https://github.com/KSWISHA9/IAM-002-Enterprise-Application-Onboarding-SSO) | Enterprise application onboarding |
| [IAM-004 Zero Trust](https://github.com/KSWISHA9/IAM-004-Conditional-Access-Zero-Trust) | Conditional Access baseline |

---

Created by **Keshawn Lynch**
