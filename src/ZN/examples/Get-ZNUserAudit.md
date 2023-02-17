### Example 1: Get audits for a user
```powershell
Get-ZNUserAudit -UserId u:a:E6iXCia4
```

```output
AuditType Details
--------- -------                                                                                                                     
9         {"rule":{"remoteEntityNames":[{"id":"b:110001","name":"Any asset"}],"ports":[{"protocol_type":6,"ports":"3389"}],"expiratio…
```

This cmdlet gets the audits for a user.
