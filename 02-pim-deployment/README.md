# 02 - Privileged Identity Management (PIM)

**Previous:** [01 - Current State Assessment](../01-current-state-assessment/README.md) | **Next:** [03 - Entitlement Management](../03-entitlement-management/README.md)

---

## Purpose

Permanent administrator assignments significantly increase organizational risk by creating standing privileged access. Microsoft Entra Privileged Identity Management enables Just-In-Time access, requiring privileged users to activate administrative roles only when necessary.

This phase documents the design and implementation of the privileged access management strategy for the OmniVerse environment.

---

## Current Administrative Roles

| Role | Assignment Type | Status |
|---|---|---|
| Global Administrator | Permanent | Current State |
| Global Reader | Permanent | Current State |
| Security Administrator | Planned | Future |
| User Administrator | Planned | Future |

---

## Target State

All privileged roles transition from permanent assignments to Eligible assignments managed through PIM.

| Capability | Configuration |
|---|---|
| Assignment Type | Eligible |
| Activation | Just-In-Time |
| MFA Required | Yes |
| Justification Required | Yes |
| Approval Required | Security Team |
| Maximum Activation Duration | 4 Hours |
| Notifications | Enabled |
| Audit Logging | Enabled |

---

## Privileged Access Workflow

```mermaid
flowchart TD
    A[User Requests Role Activation] --> B[MFA Verification]
    B --> C[Business Justification Submitted]
    C --> D[Approval Required - Security Team]
    D --> E[Eligible Role Activated]
    E --> F[Administrative Tasks Performed]
    F --> G[Activation Automatically Expires]
    G --> H[Audit Log Recorded]
```

---

## Administrative Roles Protected

| Role | Governance |
|---|---|
| Global Administrator | PIM Eligible |
| Security Administrator | PIM Eligible |
| User Administrator | PIM Eligible |
| Privileged Role Administrator | PIM Eligible |
| Conditional Access Administrator | PIM Eligible |

---

## PIM Configuration Standards

| Setting | Value |
|---|---|
| Eligible Assignments | Enabled |
| Permanent Assignments | Minimized |
| MFA on Activation | Required |
| Justification | Required |
| Ticket Number | Optional |
| Approval Workflow | Enabled |
| Maximum Duration | 4 Hours |
| Notifications | Email Enabled |

---

## Security Benefits

- Eliminates standing administrative privileges
- Reduces attack surface
- Supports Zero Trust principles
- Improves audit visibility
- Provides complete activation history
- Enables least privilege administration
- Supports regulatory compliance
- Reduces lateral movement risk

---

## Screenshots

### 1. Privileged Identity Management Overview
Shows the Microsoft Entra PIM overview confirming the feature is active in the OmniVerse tenant.
![PIM Overview](../screenshots/01-pim-overview.png)

### 2. Microsoft Entra Roles
Shows the list of Microsoft Entra directory roles available for PIM governance.
![Entra Roles](../screenshots/02-pim-entra-roles.png)

### 3. Global Administrator Role
Shows the Global Administrator role selected for PIM eligible assignment configuration.
![Global Admin Role](../screenshots/03-pim-global-admin-role.png)

### 4. Eligible Assignment Configuration
Shows the eligible assignment being configured for the Global Administrator role.
![Eligible Assignment](../screenshots/04-pim-eligible-assignment.png)

### 5. Activation Settings
Shows the PIM activation settings including MFA requirement, justification, and maximum duration.
![Activation Settings](../screenshots/05-pim-activation-settings.png)

### 6. Approval Settings
Shows the approval workflow configured for privileged role activation requests.
![Approval Settings](../screenshots/06-pim-approval-settings.png)

### 7. Notification Settings
Shows the notification configuration for PIM role activations and approvals.
![Notification Settings](../screenshots/07-pim-notification-settings.png)

### 8. PIM Audit History
Shows the PIM audit log confirming role assignment and activation events are being tracked.
![Audit History](../screenshots/08-pim-audit-history.png)

### 9. Activation Workflow
Shows the role activation request workflow from the user perspective.
![Activation Workflow](../screenshots/09-pim-activation-workflow.png)

### 10. My Roles Dashboard
Shows the My Roles dashboard where eligible role assignments are visible to the user.
![My Roles](../screenshots/10-pim-my-roles.png)
