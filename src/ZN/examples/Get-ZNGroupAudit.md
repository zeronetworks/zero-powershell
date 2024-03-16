### Example 1: Get audits for a group
```powershell
(Get-ZNGroupAudit -GroupId g:c:gP9POclU).Items
```

```output
AuditType Details
--------- -------                                                                                                                     
18        {"rp":{"enforcementSource":5,"duration":6,"ports":"123","protocol":6,"mfaMethods":[5],"description":"Test Policy","srcProce…
17        {"rp":{"enforcementSource":5,"duration":6,"ports":"123","protocol":6,"mfaMethods":[5],"description":"Test Policy","srcProce…
```

This cmdlet get the audits for a group.
