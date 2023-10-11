---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zngroupaudit
schema: 2.0.0
---

# Get-ZNGroupAudit

## SYNOPSIS
Returns a list of audits for the group.

## SYNTAX

```
Get-ZNGroupAudit -GroupId <String> -GroupType <String> [-Cursor <Int64>] [-Order <String>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of audits for the group.

## EXAMPLES

### Example 1: Get audits for a group
```powershell
(Get-ZNGroupAudit -GroupId g:c:gP9POclU).Items
AuditType Details
--------- -------                                                                                                                     
18        {"rp":{"enforcementSource":5,"duration":6,"ports":"123","protocol":6,"mfaMethods":[5],"description":"Test Policy","srcProce…
17        {"rp":{"enforcementSource":5,"duration":6,"ports":"123","protocol":6,"mfaMethods":[5],"description":"Test Policy","srcProce…
```

This cmdlet get the audits for a group.

## PARAMETERS

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

### -GroupId
groupId to filter on

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

### -GroupType
group type to filter on

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAuditList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

