---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znaeexclusionsinbound
schema: 2.0.0
---

# Get-ZNAeExclusionsInbound

## SYNOPSIS
Returns a list of AE exclusions.

## SYNTAX

```
Get-ZNAeExclusionsInbound [-AccountName <String>] [-AddAncestors] [-AddBuiltins] [-EnrichRemoteIps]
 [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>]
 [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of AE exclusions.

## EXAMPLES

### Example 1: List Inbound AE Exclusions
```powershell
(Get-ZNAeExclusionsInbound).Items
```

```output
Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1709213209409
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
DeletedAt                  : 1726517957934
DeltedById                 : 
DeltedByName               : 
Description                : 
Direction                  : 1
ExcludedEntityInfos        : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 1
Id                         : 3a6f56a8-288f-4447-b8bc-9c63c4c8a58d
LocalEntityId              : g:t:01669ce2
LocalEntityInfo            : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
LocalEntitySuccessor       : {dc01}
LocalProcessesList         : {*}
ParentId                   : 
ParentType                 : 0
PortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem, 
                             ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
RemoteEntityIdsList        : {b:110001}
RemoteEntityInfos          : {Any asset}
Ruleclass                  : 
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 3
UpdatedAt                  : 1726517957934
UpdatedById                : 
UpdatedByName              : 

Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1702254842410
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
DeletedAt                  : 1723024981263
DeltedById                 : 
DeltedByName               : 
Description                : Auto-generated rule for tagged traffic
Direction                  : 1
ExcludedEntityInfos        : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 1
Id                         : 12726147-20f1-49d3-96b1-1090bbcbe15d
LocalEntityId              : g:t:01669ce2
LocalEntityInfo            : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
LocalEntitySuccessor       : {dc01}
LocalProcessesList         : {*}
ParentId                   : 
ParentType                 : 0
PortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem, 
                             ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
RemoteEntityIdsList        : {b:110001}
RemoteEntityInfos          : {Any asset}
Ruleclass                  : 
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 3
UpdatedAt                  : 1723024981263
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
```

This cmdlet lists inbound AE Exclusions.

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

### -AddAncestors
show rules where the asset is part of a group

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddBuiltins
show global rules

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnrichRemoteIps
enrich remote IPs

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filters
JSON string URI encoded set of filters

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

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
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

### -OrderColumns
what column to order on

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

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAeExclusionList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

