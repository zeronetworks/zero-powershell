---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znswitchaudit
schema: 2.0.0
---

# Get-ZNSwitchAudit

## SYNOPSIS
Returns a list of audits for the asset.

## SYNTAX

```
Get-ZNSwitchAudit -SwitchId <String> [-AccountName <String>] [-Cursor <Int64>] [-Order <String>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of audits for the asset.

## EXAMPLES

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

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cursor
cursor position to start at

```yaml
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
What order to sort the results

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Test to search for

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SwitchId
switch to delete

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAuditList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

