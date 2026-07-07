# 06 - Operational Handoff

**Previous:** [05 - Governance Automation](../05-governance-automation/README.md)

---

## Purpose

This document provides the information required for the operations team to maintain the OmniVerse Identity Governance program after engineering handoff.

---

## Handoff Checklist

| Item | Status |
|---|---|
| PIM configured | Complete |
| Eligible assignments documented | Complete |
| Access Packages documented | Complete |
| Catalogs documented | Complete |
| Approval workflows documented | Complete |
| Quarterly reviews scheduled | Complete |
| Audit scripts validated | Complete |
| Governance reports exported | Complete |

---

## Monthly Operations

- Review PIM activation history and flag unusual activations.
- Review Access Package requests and approvals.
- Review privileged role assignments for drift.
- Run `Export-PIMAssignments.ps1` and compare against previous export.
- Review guest user access for any accounts that should be removed.

---

## Quarterly Operations

- Run all access review campaigns.
- Validate Separation of Duties controls.
- Review approval chain configurations for organizational changes.
- Run `Audit-IdentityGovernance.ps1` and archive the report.
- Review Access Package expirations and renew or remove as appropriate.

---

## Rollback Plan

| Scenario | Action |
|---|---|
| PIM activation blocked legitimate admin | Use break-glass account to restore access |
| Access Package approval chain broken | Temporarily assign direct access and fix workflow |
| Access review auto-removed needed access | Re-grant via Access Package request |
| Governance script fails | Run manually from Entra portal |

---

## Future Enhancements

| Enhancement | Priority |
|---|---|
| Lifecycle Workflows for onboarding/offboarding | High |
| Administrative Units for delegated management | High |
| Custom Security Attributes for classification | Medium |
| Identity Secure Score improvement program | Medium |
| Integration with an ITSM access request workflow | Medium |
| Privileged Access Workstations (PAW) | Low |
| Integration with SailPoint or Saviynt | Low |
