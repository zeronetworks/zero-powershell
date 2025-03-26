---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclusteraudit
schema: 2.0.0
---

# Get-ZNK8SClusterAudit

## SYNOPSIS
Returns a list of audits for the K8s.

## SYNTAX

```
Get-ZNK8SClusterAudit -K8SClusterId <String> [-AccountName <String>] [-Cursor <Int64>] [-Order <String>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of audits for the K8s.

## EXAMPLES

### Example 1: List K8s clusters audits
```powershell
(Get-ZNK8SClusterAudit -ClusterId k:c:FYe7yLUJ).Items
```

```output
AuditType               : 252
DestinationEntitiesList : {Openshift}
Details                 : {"cluster":{"name":"Openshift","k8sUid":"","clusterType":0,"clusterVersion":"","cniType":0,"cniVersion":
                          "","ip":""}}
EnforcementSource       : 4
IsoTimestamp            : 2025-01-27T01:27:21.185Z
ParentObjectId          : 
PerformedById           : 11778dee-127b-4677-bbba-734040606532
PerformedByName         : Nicholas DiCola
ReportedObjectId        : k:c:FYe7yLUJ
Timestamp               : 1737941241185
UserRole                : 1
```

This cmdlet lists K8s (kubernetes) clusters audits.

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

### -K8SClusterId
cluserId to filter on

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

## RELATED LINKS

