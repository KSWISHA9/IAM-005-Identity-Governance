# IAM-005 - Enterprise Identity Governance

> OmniVerse Enterprise Engineering Portfolio

## Overview

This repository documents the design, implementation, and operational handoff of a Microsoft Entra Identity Governance deployment for the OmniVerse environment.

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

## Governance Capabilities Deployed

| Capability | Tool | Status |
|---|---|---|
| Privileged Identity Management | Microsoft Entra PIM | Configured |
| Just-In-Time Access | PIM Eligible Assignments | Configured |
| Entitlement Management | Access Packages and Catalogs | Configured |
| Access Request Workflow | Approval Chains | Configured |
| Quarterly Access Reviews | Microsoft Entra Access Reviews | Configured |
| Governance Audit Automation | PowerShell + Microsoft Graph | Configured |

---

## Skills Demonstrated

- Microsoft Entra Privileged Identity Management (PIM)
- Just-In-Time Access Design
- Entitlement Management and Access Packages
- Catalog Design and Resource Governance
- Access Review Campaign Management
- Approval Workflow Configuration
- Governance Automation with Microsoft Graph PowerShell
- Identity Governance Documentation
- Operational Runbook Development

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
