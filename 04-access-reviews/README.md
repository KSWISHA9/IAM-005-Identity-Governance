# 04 - Access Reviews

**Previous:** [03 - Entitlement Management](../03-entitlement-management/README.md) | **Next:** [05 - Governance Automation](../05-governance-automation/README.md)

---

## Purpose

Implement recurring certification campaigns to validate that privileged and business access remains appropriate. Access Reviews ensure that permissions do not accumulate over time and that access is removed promptly when no longer needed.

---

## Review Types

| Review Type | Frequency | Reviewer |
|---|---|---|
| Quarterly Administrative Review | Quarterly | Security Team |
| Department Access Review | Quarterly | Department Managers |
| Guest User Review | Monthly | Resource Owners |
| Group Membership Review | Quarterly | Group Owners |
| Application Assignment Review | Semi-annual | Application Owners |

---

## Governance Standards

| Setting | Value |
|---|---|
| Frequency | Quarterly |
| Reviewers | Managers and Resource Owners |
| Auto Apply Results | Enabled |
| Reminder Emails | Enabled |
| Escalation | Enabled after 7 days of no response |
| Default Decision | Deny (if reviewer does not respond) |

---

## Example Review — Engineering Department

Engineering Manager reviews quarterly:

- GG-Engineering group membership
- Azure RBAC role assignments
- Enterprise application assignments
- Administrative role assignments

Any access not explicitly approved is automatically removed after the review period closes.

---

## Review Outcomes

| Outcome | Action |
|---|---|
| Approved | Access retained for next review period |
| Denied | Access removed automatically |
| No Response | Access removed based on default Deny decision |
| Escalated | Escalated to department head for final decision |
