# Identity Governance Operating Model

## Purpose

The Identity Governance operating model defines how privileged access, access requests, lifecycle governance, and periodic certification are managed within the OmniVerse environment.

---

## Governance Components

| Component | Function |
|---|---|
| Privileged Identity Management | Just-In-Time role activation and audit |
| Entitlement Management | Structured access request and approval |
| Access Packages | Bundled resource access for defined roles |
| Approval Chains | Multi-tier business approval workflow |
| Quarterly Access Reviews | Recurring certification campaigns |
| Role-Based Access Control | Least privilege resource assignment |
| Separation of Duties | Conflict detection and prevention |

---

## Operating Model

1. Users request access through a defined Access Package.
2. Managers approve or deny the request within 3 business days.
3. Users receive least-privilege access for a defined period.
4. Privileged roles remain Eligible through PIM — no standing access.
5. Administrative access requires MFA and business justification at activation.
6. All access is reviewed quarterly — unused or inappropriate access is removed.
7. Audit reports validate governance controls and support compliance evidence.

---

## Governance Principles

| Principle | Application |
|---|---|
| Verify Explicitly | MFA and justification required at every activation |
| Least Privilege | No standing admin access — eligible assignments only |
| Assume Breach | Time-limited access minimizes blast radius |
| Continuous Verification | Quarterly reviews and continuous audit logging |
| Just-In-Time Administration | Roles activated on demand, expire automatically |

---

## Expected Outcomes

- Reduced standing privileged access across the environment
- Strong, auditable governance controls
- Improved audit readiness and compliance posture
- Consistent access lifecycle management
- Enterprise-aligned identity security program
