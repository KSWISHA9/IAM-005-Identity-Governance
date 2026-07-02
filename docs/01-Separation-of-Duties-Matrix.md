# Separation of Duties (SoD) Matrix

## Purpose

Separation of Duties is a governance control designed to reduce fraud, prevent privilege abuse, and minimize the risk of a single individual performing conflicting administrative functions.

This document identifies role conflicts that should be prevented through governance controls, access reviews, and Privileged Identity Management.

---

## Administrative Role Conflicts

| Role | Should Not Also Have | Reason |
|---|---|---|
| Global Administrator | Billing Administrator | Prevent excessive administrative control |
| Global Administrator | User Administrator | Reduce privilege concentration |
| Privileged Role Administrator | User Administrator | Prevent self-escalation |
| Security Administrator | Compliance Administrator | Preserve independent oversight |
| Exchange Administrator | Global Administrator | Reduce standing privileged access |

---

## Business Function Conflicts

| Department | Should Not Also Have |
|---|---|
| Finance | Engineering |
| Human Resources | Security Operations |
| Procurement | Audit |
| Security Operations | Compliance Review |

---

## Governance Controls

- Privileged Identity Management (PIM)
- Just-In-Time role activation
- Quarterly access reviews
- Manager approval workflows
- Least privilege access model

---

## Outcome

Implementing Separation of Duties reduces administrative risk, strengthens governance, and supports Zero Trust identity principles by ensuring no individual maintains unnecessary or conflicting privileges.
