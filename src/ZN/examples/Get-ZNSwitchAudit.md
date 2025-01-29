### Example 1: Get switch audits
```powershell
(Get-ZNSwitchAudit -SwitchId w:c:IBlczUkw).Items
```

```output
AuditType               : 232
DestinationEntitiesList : {eve}
Details                 : {"switchName":"eve","interfaceNames":["GigabitEthernet2"]}
EnforcementSource       : 4
IsoTimestamp            : 2025-01-27T23:44:54.135Z
ParentObjectId          : 
PerformedById           : 11778dee-127b-4677-bbba-734040606532
PerformedByName         : Nicholas DiCola
ReportedObjectId        : 
Timestamp               : 1738021494135
UserRole                : 1

AuditType               : 233
DestinationEntitiesList : {eve}
Details                 : {"switchName":"eve","interfaceNames":["GigabitEthernet2"]}
EnforcementSource       : 4
IsoTimestamp            : 2025-01-27T23:44:50.643Z
ParentObjectId          : 
PerformedById           : 11778dee-127b-4677-bbba-734040606532
PerformedByName         : Nicholas DiCola
ReportedObjectId        : 
Timestamp               : 1738021490643
UserRole                : 1
```

This cmdlet lists audits for a switch.
