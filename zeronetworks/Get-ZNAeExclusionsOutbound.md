---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znaeexclusionsoutbound
schema: 2.0.0
---

# Get-ZNAeExclusionsOutbound

## SYNOPSIS
Returns a list of AE exclusions.

## SYNTAX

```
Get-ZNAeExclusionsOutbound [-AccountName <String>] [-AddAncestors] [-AddBuiltins] [-EnrichRemoteIps]
 [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>]
 [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of AE exclusions.

## EXAMPLES

### Example 1: List Outbound AE Exclusions
```powershell
(Get-ZNAeExclusionsOutbound).Items
```

```output
Action                     : 2
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1708466176008
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
DeletedAt                  : 1726517957934
DeltedById                 : 
DeltedByName               : 
Description                : 
Direction                  : 2
ExcludedEntityInfos        : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 1
Id                         : a9c77d74-68f5-4205-9219-1e012d317902
LocalEntityId              : g:t:01669ce2
LocalEntityInfo            : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
LocalEntitySuccessor       : {dc01}
LocalProcessesList         : {*}
ParentId                   : 
ParentType                 : 0
PortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
RemoteEntityIdsList        : {b:120101010120}
RemoteEntityInfos          : {1.1.1.1}
Ruleclass                  : 
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 3
UpdatedAt                  : 1726517957934
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet lists outbound AE Exclusions.

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

